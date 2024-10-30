# Symfony controller sketch

```php
    #[Route('/', name: 'app_method', methods: ['GET'], format: 'json')]
    public function method(): JsonResponse {
        $data = [];
        $status_code =500;
        try {
            // Internal logic
        } catch(Exception $e){
            $data = $e->getMessage();
            $status_code = array_key_exists($e->getCode, JsonResponse::$statusTexts) ?
                $e->getcode :
                JsonResponse::HTTP_INTERNAL_SERVER_ERROR;
        } finally {
            return $this->json($data, $status_code);
        }
    }
```
