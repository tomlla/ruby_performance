
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
