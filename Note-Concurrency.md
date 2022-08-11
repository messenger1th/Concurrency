# Note-Concurrency



## Why Use Concurrency

To take full use of multiply core CPU, Minimize the calculation time.



## How to Use

Please check relevant API. 

* *The C++ Standard Library: A Tutorial and Reference, Second Edition.* by  Niolai M. Josuttis.



### Lower level of Abstraction

* Use `std::thread` to launch a thread right now.
* Pass `std::promise` to thread paras to set the result in that thread.



### Upper level of Abstraction

* Use `std::asynch` to define a thread, pass `launch:: ` para to decide the launch choice.
* Use `std::future<>` to get the  return value of `std::asynch`.



### Higher Level of Abstraction

* Use `packet_task<>`.



## Sharing Data between threads

To protect data changed by multi threads, lock the data relevant `mutex`.

for data access order, there are  **Race Conditions** should be token into consideration. 

for one thread are waiting for other thread, there may be **Dead Lock** problems.



### Race Condition



### Dead Lock

Here are some guideline to avoid Dead Lock.

* Avoid nested locks. If you have hold one, don't acquire another one.
* Avoid Calling user-supplied code while holding a lock. As a follow-on of the previous. 
* Acquire locks in a fixed order.
* Use a lock hierarchy.
* Extending these guidelines beyond locks.



### Appropriate granularity

* Use `unique_lock` rather than `lock_guard` to provide more flexibility by `lock()`, `unlock()`, `try_lock()` member function which `lock_guard` not provide.



**Protecting shared data during initialization**

For Lazy Initialization, for example **Lazy Singleton**, consider code as follow.

```cpp
Singleton* Singleton::CreateInstance()  {
    /* traditional implementation. */
    if (instance == nullptr) {
        std::unique_lock<std::mutex> lock(m); 
        if (instance == nullptr)
            instance = new Singleton;
    }
    return instance;
}
```

when other thread changed the  instance pointer, which is not `nullptr` already, will return a undefined  value with incomplete assignment.

As a solution, Use `atomic` to avoid incomplete assignment.

Specially, Use C++11 feature `one_flag` and `call_once` to solve it.

```cpp
std::once_flag onceFlag;
Singleton* instance(nullptr);

Singleton *Singleton::CreateInstance()  {
    /* C++11 elegant implement. */
    std::call_once(onceFlag, [&] { instance = new Singleton; } );
    return instance;
}
```

By the way, `[&] { instance = new Singleton; }` Lambda Function is C++11 feature, too.



Honestly, use `static` is a solution, too.

```cpp
Singleton *Singleton::CreateInstance()  {
    static instance* = new Singleton;
    return instance;
}
```



## Synchronizing concurrent operations

### Waiting for an event or other condition

1. Version1.0 : CPU check, waste CPU resources.

    ```cpp
    void doSomeWork() {
        std::unique_lock<std::mutex> lock(m);
        while (!flag) {
            ;
        }
        //do some work.
    }
    ```

2. Version2.0: fine-tune, check every 100ms by CPU.

    ```cpp
    void doSomeWork() {
        std::unique_lock<std::mutex> lock(m);
        while (!flag) {
            lock.unlock();
            std::this_thread::sleep_for(std::chrono::milliseconds(100));
            lock.lock();
        }
        //do some work.
    }
    ```

3. Version final: Use `condition_variable` to notify.

    ```cpp
    code omit...
    ```

    

### Waiting for one-off events with futures

* For lower level abstraction, `std::thread`, there are no return value. pass `std::promise`to set operation result.
* For upper level abstraction,  use `std::future<>()` and `std::async()` to return value based on `std::thread` and `std::promise`.



### Waiting with a time limit

for `std::condition_variable` and `std::future<>`

* `wait_for`
* `wait_until`

There are also some functions  that accept timeouts...



Worth noticing, 

* `chrono::system_clock` is about system clock. Program will be influent by system clock if you change it.
* while `chrono::steady_clock` is not.

