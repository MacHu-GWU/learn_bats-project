learn bats, bash automates testing system
==============================================================================

test is little bit tricky in command line (cli) program development. In cli program, you care about the standard output returned, status code, variable value change, file system change.

bats is a framework for testing cli program.

- bats hompage: https://github.com/bats-core/bats-core
- install on Mac: ``brew install bats-core``
- install on Linux:

.. code-block:: bash

    $ git clone https://github.com/bats-core/bats-core.git
    $ cd bats-core
    $ ./install.sh /usr/local


中文文档
------------------------------------------------------------------------------

如何测试 bash 中的函数?

bats 主要为测试命令而生, ``$status`` 只捕获命令的状态码, 而不捕获函数的返回码. 为了测试一个函数, 建议创建一个和 ``my_script.sh`` 同名的 ``.bash`` 文件 ``test_my_script.bash``, 然后再第一行 ``source ./bin/tool.sh`` (假设当前目录是项目主目录). 然后再这个文件中创建 ``test_my_function`` 函数, 用于测试你想要测的函数. 然后再在 ``.bats`` 文件中, ``load test_my_script``, 然后:

.. code-block:: bash

    load test_my_script

    @test "my_function works" {
        test_my_function
    }

有点复杂, 但是不难理解.
