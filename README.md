
```
$ bundle exec ruby bench.rb
Warming up --------------------------------------
ActiModelWithAttributes
                        11.730k i/100ms
    NormlActiveModel    25.425k i/100ms
           Struct::S    48.036k i/100ms
                Hash    53.824k i/100ms
Calculating -------------------------------------
ActiModelWithAttributes
                        116.226k (± 0.6%) i/s -    586.500k in   5.046407s
    NormlActiveModel    255.476k (± 0.7%) i/s -      1.297M in   5.075776s
           Struct::S    481.613k (± 0.5%) i/s -      2.450M in   5.086849s
                Hash    542.795k (± 0.4%) i/s -      2.745M in   5.057287s
```



Ruby version:

`ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]`

Gems:

* activemodel (7.0.0)
* benchmark-ips (2.9.2)

CPU

```shell
$ cat /proc/cpuinfo |grep 'model name' | head -1
model name      : AMD Ryzen 7 PRO 4750G with Radeon Graphics
```
