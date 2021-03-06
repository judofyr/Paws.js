<!-- This is definitely the biggest hack, ever. Damnit, GitHub. -->
<h1><a href="https://travis-ci.org/elliottcable/Paws.js"><img alt='Build status' src="https://travis-ci.org/elliottcable/Paws.js.png" align='right'></a><img src="http://elliottcable.s3.amazonaws.com/p/8x8.png" align='right'><a href="https://coveralls.io/r/elliottcable/Paws.js"><img alt='Coverage status' src="https://coveralls.io/repos/elliottcable/Paws.js/badge.png?branch=Master" align='right'></a><img src="http://elliottcable.s3.amazonaws.com/p/8x8.png" align='right'><a href="https://gemnasium.com/elliottcable/Paws.js"><img alt='Dependency status' src="https://gemnasium.com/elliottcable/Paws.js.png" align='right'></a>

Paws.js </h1>
Yet another stab at Paws; this time, attempting to be idiomatic with my JavaScript, and be
browser-friendly. Time to make “a real Paws.”

Of note, this is *still* a playground for ideas; meaning that, at the moment, I'm going to be trying
a continuation-based instead of execution-based Paws, first-classing the concept of “holes.” I've
high hopes for this approach clearing up a whole pile of obscure confusing problems.

Notes to self
-------------
In the spirit of being idiomatic for a change, here's a couple design goals of the codebase, at
least during the boring repetitive “implementing the same Paws concepts *yet again*” phase:

 - using CoffeeScript, for the first time evah, despite the huge drawback thereof
 - taking an idiomatic CommonJS (fuckin' ick. ಠ_ಠ) modularization style. `require()`, here I come.
    - correspondingly, I'll have to use Browserify or similar instead of the `from` magic I wanted
 - doing project-support with common tools: TJ Holowaychuk's (ಠ_ಠ) Mocha, Chai, etceteras
 - trying to build at least a *mildly* idiomatic API, making as much full use of `EventEmitter`s,
   and probably Q-style promises, as I can

<div align='center' id='browser-support'>
   <h4>Browser support:</h4>
   <a href="https://ci.testling.com/elliottcable/Paws.js">
      <img alt="Current browser-support status on HEAD (generated by Testling-CI)" src="https://ci.testling.com/elliottcable/Paws.js.png"> </a>
</div>
