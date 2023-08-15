# Odoo Dev Docker
Docker to deploy Odoo development projects.

1. Add all repositories dependencies inside _./odoo/custom/src/_ folder.

    You can use [autogit](https://github.com/dmsergio/autogit) Python script to speed up the download process.

2. Set up in the _./odoo/custom/src/addons.yml_ file the modules of each repository (downloaded in the previous step) you want it will available in the Odoo instance.

3. Copy the _template.env_ file to _./.env_, and set your custom env variables.

    ```shell
    cp ./template.env ./.env
    ```

    You must to change the following variables:

    - __ODOO_VERSION__: Version of your Odoo instance. E.g. 13.0, 14.0, 15.0, etc.
    - __ODOO_PORT__: Port in order to access to Odoo instance. E.g. 13 will be '13069', 14 will be 14069, and so on.
    - __WORKDIR__: Absolute path to ./odoo/custom/src/ folder. For example: `/home/foo-user/projects/my-custom-odoo/odoo/custom/src`.
    - __DB_VERSION__: Postgres version to install.

4. Build the image and run the services:

    ```shell
    make build
    make up
    ```

    Or
    ```shell
    make fast-up
    ```

5. Open the instance in the web browser: http://localhost:{ODOO_PORT}069
