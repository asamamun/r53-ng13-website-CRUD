<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body>
    <div class="row" id="product-container"></div>
    <div id="product-container">
        <?php
        $jsonData = require('productapi.php');
        $data = json_decode($jsonData, true); // true to get an associative array

        if ($data !== null) {
            // process the data
            foreach ($data as $product) {
                echo $product['id'] . ': ' . $product['price'] . '<br>';
            }
        } else {
            // handle error
            echo 'Error fetching data';
        }

        ?>
    </div>


    <script>
        //         fetch('productapi.php')
        //   .then(response => response.json())
        //   .then(data => {
        //     const productContainer = document.getElementById('product-container');

        //     data.forEach(product => {
        //       const card = document.createElement('div');
        //       card.classList.add('col-sm-4', 'mb-3');

        //       const cardBody = document.createElement('div');
        //       cardBody.classList.add('card', 'h-100');

        //       const cardImage = document.createElement('img');
        //       cardImage.src = product.image_url;
        //       cardImage.classList.add('card-img-top', 'h-50');

        //       const cardTitle = document.createElement('h5');
        //       cardTitle.textContent = product.name;
        //       cardTitle.classList.add('card-title', 'my-2');

        //       const cardText = document.createElement('p');
        //       cardText.textContent = product.description;
        //       cardText.classList.add('card-text');

        //       const cardPrice = document.createElement('p');
        //       cardPrice.textContent = '$' + product.price.toFixed(2);
        //       cardPrice.classList.add('card-text', 'text-muted');

        //       cardBody.appendChild(cardImage);
        //       cardBody.appendChild(cardTitle);
        //       cardBody.appendChild(cardText);
        //       cardBody.appendChild(cardPrice);
        //       card.appendChild(cardBody);
        //       productContainer.appendChild(card);
        //     });
        //   })
        //   .catch(error => console.error(error));
    </script>
    <script>
        // fetch('productapi.php')
        //     .then(response => response.json())
        //     .then(data => {
        //         console.log(data); // Output: JSON data
        //         console.log(data.property); // Output: Value of "property" in JSON data
        //         data.forEach(product => {
        //             let ht = '';
        //             // let da = product.id);// Output:
        //             console.log(product.title); // Output:
        //             ht += `<p>ID : ${product.id} </p> <br/>`;
        //             ht += `<p>Title : ${product.title} </p> <br/>`;
        //             document.querySelector('.row').innerHTML = ht; // Output:
        //         });
        //     })
        //     .catch(error => console.error(error));

        //     fetch('productapi.php')
        //   .then(response => response.json())
        //   .then(data => {
        //     const productContainer = document.getElementById('product-container');

        //     data.forEach(product => {
        //       const productId = document.createElement('p');
        //       productId.textContent = 'Product ID: ' + product.id;

        //       const productPrice = document.createElement('p');
        //       productPrice.textContent = 'Price: $' + product.price.toFixed(2);

        //       productContainer.appendChild(productId);
        //       productContainer.appendChild(productPrice);
        //     });
        //   })
        //   .catch(error => console.error(error));
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>