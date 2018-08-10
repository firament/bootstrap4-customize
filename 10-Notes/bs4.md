# Bootstrap 4.1.2 notes

## Gen
```html
<small class="text-muted">
	Someone famous in
	<cite title="Source Title">Source Title</cite>
</small>
```

## Cards
- Default Sample
	```html
	<div class="card" style="width: 18rem;">
	<div class="card-body">
		<h5 class="card-title">Card title</h5>
		<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
		<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		<a href="#" class="card-link">Card link</a>
		<a href="#" class="card-link">Another link</a>
	</div>
	</div>
	```

- Header and footer
	- `.card-header`

- Using grid markup
	- Using the grid, wrap cards in columns and rows as needed.

- Image caps
	- Similar to headers and footers, cards can include top and bottom “image caps”—images at the top or bottom of a card.
	- `.card-img-top`
	- `.card-img-bottom`
	```html
	<div class="card" style="width: 18rem;">
	<h5 class="card-header">Featured</h5>
	<img class="card-img-top" src=".../100px180/?text=Image cap" alt="Card image cap">
	<div class="card-body">
		<h5 class="card-title">Card title</h5>
		<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	</div>
	<ul class="list-group list-group-flush">
		<li class="list-group-item">Cras justo odio</li>
		<li class="list-group-item">Dapibus ac facilisis in</li>
		<li class="list-group-item">Vestibulum at eros</li>
	</ul>
	<div class="card-body">
		<a href="#" class="card-link">Card link</a>
		<a href="#" class="card-link">Another link</a>
	</div>
	</div>
	```

- Image overlays
	- Turn an image into a card background and overlay your card’s text.
	```html
	<div class="card bg-dark text-white">
	<img class="card-img" src=".../100px270/#55595c:#373a3c/text:Card image" alt="Card image">
	<div class="card-img-overlay">
		<h5 class="card-title">Card title</h5>
		<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		<p class="card-text">Last updated 3 mins ago</p>
	</div>
	</div>
	```

- Card groups
	- Use card groups to render cards as a single, attached element with equal width and height columns.
	```html
	<div class="card-group">
		When using card groups with footers, their content will automatically line up.
	</div>
	```

- Card decks
	- Need a set of equal width and height cards that aren’t attached to one another
	```html
	<div class="card-deck">
	<div class="card">
		
	</div>
	</div>
	```

