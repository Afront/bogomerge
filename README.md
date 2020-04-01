# Bogomerge

![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg) [![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE-MIT)

There are a lot of inefficient algorithms out there.

This algorithm is not one of them.

This sort is similar to Timsort in which mergesort and insertion sort are used. 

Instead of using insertion sort, I used a similarly efficient sorting algorithm called bogosort. Like Timsort, it uses the alternative sort if the size does not meet the threshold. The threshold can be any number, but I used `Random.rand(3)` for the threshold to keep the algorithm's worst-case performance and worst-case space complexity.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     bogomerge:
       github: your-github-user/bogomerge
   ```

2. Run `shards install`

## Usage

```crystal
require "bogomerge"
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/bogomerge/fork>)

2. Create your feature branch (`git checkout -b my-new-feature`)

3. Commit your changes (`git commit -am 'Add some feature'`)

4. Push to the branch (`git push origin my-new-feature`)

5. Create a new Pull Request

   

   ## License


   Dual-licensed under Apache and MIT

