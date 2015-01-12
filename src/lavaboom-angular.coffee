angular.module("lavaboom.api", []).provider "LavaboomAPI", LavaboomAPIProvider = () ->
    url = null
    specialToken = null
    authToken = null
    api = null

    this.setSpecialToken = (newToken) ->
        specialToken = newToken

    this.setAuthToken = (newToken) ->
        authToken = newToken

    this.setURL = (newURL) ->
        url = newURL

    this.$get = ($q) ->
        api = new Lavaboom(url, specialToken)
        api.authToken = authToken

        service =
            setAuthToken: (newToken) ->
                api.authToken = token

            info: () ->
                $q (resolve, reject) ->
                    api.info()
                        .then (e) ->
                            resolve(e)
                        .catch (e) ->
                            reject(e)
            accounts:
                create:
                    invited: (query) ->
                        $q (resolve, reject) ->
                            api.accounts.create.invited(query)
                                .then (e) ->
                                    resolve(e)
                                .catch (e) ->
                                    reject(e)
                    classic: (query) ->
                        $q (resolve, reject) ->
                            api.accounts.create.classic(query)
                                .then (e) ->
                                    resolve(e)
                                .catch (e) ->
                                    reject(e)
                reserve:
                    queue: (query) ->
                        $q (resolve, reject) ->
                            api.accounts.reserve.queue(query)
                                .then (e) ->
                                    resolve(e)
                                .catch (e) ->
                                    reject(e)
                    username: (query) ->
                        $q (resolve, reject) ->
                            api.accounts.reserve.username(query)
                                .then (e) ->
                                    resolve(e)
                                .catch (e) ->
                                    reject(e)
                get: (who) ->
                    $q (resolve, reject) ->
                        api.accounts.get(who)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                update: (who, what) ->
                    $q (resolve, reject) ->
                        api.accounts.update(who, what)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                delete: (who) ->
                    $q (resolve, reject) ->
                        api.accounts.delete(who)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                wipeData: (whose) ->
                    $q (resolve, reject) ->
                        api.accounts.wipeData(whose)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
            attachments:
                list: () ->
                    $q (resolve, reject) ->
                        api.attachments.list()
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                create: (query) ->
                    $q (resolve, reject) ->
                        api.attachments.create(query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                get: (id) ->
                    $q (resolve, reject) ->
                        api.attachments.get(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                update: (id, query) ->
                    $q (resolve, reject) ->
                        api.attachments.update(id, query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                delete: (id) ->
                    $q (resolve, reject) ->
                        api.attachments.delete(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
            contacts:
                list: () ->
                    $q (resolve, reject) ->
                        api.contacts.list()
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                create: (query) ->
                    $q (resolve, reject) ->
                        api.contacts.create(query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                get: (id) ->
                    $q (resolve, reject) ->
                        api.contacts.get(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                update: (id, query) ->
                    $q (resolve, reject) ->
                        api.contacts.update(id, query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                delete: (id) ->
                    $q (resolve, reject) ->
                        api.contacts.delete(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
            emails:
                list: (query) ->
                    $q (resolve, reject) ->
                        api.emails.list(query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                get: (id) ->
                    $q (resolve, reject) ->
                        api.emails.get(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                create: (query) ->
                    $q (resolve, reject) ->
                        api.emails.create(query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                delete: (id) ->
                    $q (resolve, reject) ->
                        api.emails.delete(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)

            labels:
                list: () ->
                    $q (resolve, reject) ->
                        api.labels.list()
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                get: (query) ->
                    $q (resolve, reject) ->
                        api.labels.get(query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                create: (query) ->
                    $q (resolve, reject) ->
                        api.labels.create(query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                delete: (query) ->
                    $q (resolve, reject) ->
                        api.labels.delete(query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                update: (id, query) ->
                    $q (resolve, reject) ->
                        api.labels.update(id, query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)

            keys:
                list: (name) ->
                    $q (resolve, reject) ->
                        api.keys.list(name)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                get: (id) ->
                    $q (resolve, reject) ->
                        api.keys.get(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                create: (key) ->
                    $q (resolve, reject) ->
                        api.keys.create(key)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
            tokens:
                getCurrent: () ->
                    $q (resolve, reject) ->
                        api.tokens.getCurrent()
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                get: (id) ->
                    $q (resolve, reject) ->
                        api.tokens.get(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                create: (query) ->
                    $q (resolve, reject) ->
                        api.tokens.create(query)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                deleteCurrent: () ->
                    $q (resolve, reject) ->
                        api.tokens.deleteCurrent()
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)
                delete: (id) ->
                    $q (resolve, reject) ->
                        api.tokens.delete(id)
                            .then (e) ->
                                resolve(e)
                            .catch (e) ->
                                reject(e)

        return service

    return this
