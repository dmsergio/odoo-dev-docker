# Odoo Dev Docker
Docker to deploy Odoo development projects.

1. Add all repositories dependencies inside _./odoo/custom/src/_ folder.

    You can use [autogit](https://github.com/dmsergio/autogit) Python script to speed up the download process.

2. Set up in the _./odoo/custom/src/addons.yml_ file the modules of each repository (downloaded in the previous step) you want it will available in the Odoo instance.

3. Copy the _template.env_ file to _./.env_, and set your custom env variables.

    ```shell
    cp ./template.env ./.env
    ```

    The more important variables are:

    - __ODOO_VERSION__: Version of your Odoo instance.
    - __WORKDIR__: Absolute path to ./odoo/custom/src/ folder. For example: `/home/foo-user/projects/my-custom-odoo/odoo/custom/src`

4. Build the image and run the services:

    ```shell
    docker compose build --pull
    docker compose up
    ```

    Or
    ```shell
    docker compose up -d --build
    ```

5. Open the instance in the web browser: http://localhost:<ODOO_PORT>
