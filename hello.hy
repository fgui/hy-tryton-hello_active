(import [trytond.pool [PoolMeta]])
(import [trytond.model [fields]])
(def --all-- ["Hello"])

(defclass Hello []
  "Hello World with surname"
  [--name-- "hello"
   --metaclass-- PoolMeta
   active (.Boolean fields "Active")]

  (with-decorator classmethod
    (defn default-active [class] True)
    )
  )
