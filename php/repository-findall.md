```php
<?php
///SalesController.php
class SalesController extends AbstractController
{
    private $dailySalesRepository;
    
    public function __construct(
        FatoDistribuicaoDivisaoDiaRepository $dailySalesRepository
    ) {
        $this->dailySalesRepository = $dailySalesRepository;
    }

    /**
     * @Route("/sales/growth/{range}/{frequency}", name="get_sales_growth", methods={"GET"}, format="json")
     */
    public function getSalesGrowth(){
        $data = $this->getAnnualGrowth();
        return $this->json($data, 200);
    }

    private function getAnnualGrowth()
    {
        $dailySales = $this->dailySalesRepository->findAll();
        return $dailySales;
    }
}

/// FatoDistribuicaoDivisaoDia.php
class FatoDistribuicaoDivisaoDia
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="date")
     */
    private $data_venda;

    /**
     * @ORM\Column(type="float")
     */
    private $preco_total_produto;

    /**
     * @ORM\Column(type="float")
     */
    private $valor_total_devolucao;

    /**
     * @ORM\Column(type="float")
     */
    private $valor_total_despesa;

    /**
     * @ORM\Column(type="float")
     */
    private $valor_total_verba_promo;
}
```
