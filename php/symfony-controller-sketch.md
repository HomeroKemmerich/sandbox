# Symfony Controller method sketch

```php
        $data = [];
        $status_code =500;
        try {

        } catch(Exception $e){
            $data = $e->getMessage();
            $status_code = array_key_exists($e->getCode, JsonResponse::$statusTexts) ?
                $e->getcode :
                JsonResponse::HTTP_INTERNAL_SERVER_ERROR;
        } finally {
            return $this->json($data, $status_code);
        }
```
