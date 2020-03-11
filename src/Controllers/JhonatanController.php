<?php
declare(strict_types=1);


use Invo\Controllers\ControllerBase;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;



class JhonatanController extends ControllerBase
{
    /**
     * Index action
     */
    public function indexAction()
    {
        //

    }

    /**
     * Searches for Jhonatan
     */
    public function searchAction()
    {
        $numberPage = $this->request->getQuery('page', 'int', 1);
        $parameters = Criteria::fromInput($this->di, 'Jhonatan', $_GET)->getParams();
        $parameters['order'] = "id";

        $jhonatan = Jhonatan::find($parameters);
        if (count($jhonatan) == 0) {
            $this->flash->notice("The search did not find any Jhonatan");

            $this->dispatcher->forward([
                "controller" => "Jhonatan",
                "action" => "index"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $jhonatan,
            'limit'=> 10,
            'page' => $numberPage,
        ]);

        $this->view->page = $paginator->getPaginate();
    }

    /**
     * Displays the creation form
     */
    public function newAction()
    {
        //
    }

    /**
     * Edits a Jhonatan
     *
     * @param string $id
     */
    public function editAction($id)
    {
        if (!$this->request->isPost()) {
            $jhonatan = Jhonatan::findFirstByid($id);
            if (!$jhonatan) {
                $this->flash->error("Jhonatan was not found");

                $this->dispatcher->forward([
                    'controller' => "Jhonatan",
                    'action' => 'index'
                ]);

                return;
            }

            $this->view->id = $jhonatan->id;

            $this->tag->setDefault("id", $jhonatan->id);
            $this->tag->setDefault("descripcion", $jhonatan->descripcion);
            $this->tag->setDefault("precio", $jhonatan->precio);
            
        }
    }

    /**
     * Creates a new Jhonatan
     */
    public function createAction()
    {
        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "Jhonatan",
                'action' => 'index'
            ]);

            return;
        }

        $jhonatan = new Jhonatan();
        $jhonatan->descripcion = $this->request->getPost("descripcion", "int");
        $jhonatan->precio = $this->request->getPost("precio", "int");
        

        if (!$jhonatan->save()) {
            foreach ($jhonatan->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "Jhonatan",
                'action' => 'new'
            ]);

            return;
        }

        $this->flash->success("Jhonatan was created successfully");

        $this->dispatcher->forward([
            'controller' => "Jhonatan",
            'action' => 'index'
        ]);
    }

    /**
     * Saves a Jhonatan edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "Jhonatan",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $jhonatan = Jhonatan::findFirstByid($id);

        if (!$jhonatan) {
            $this->flash->error("Jhonatan does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "Jhonatan",
                'action' => 'index'
            ]);

            return;
        }

        $jhonatan->descripcion = $this->request->getPost("descripcion", "int");
        $jhonatan->precio = $this->request->getPost("precio", "int");
        

        if (!$jhonatan->save()) {

            foreach ($jhonatan->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "Jhonatan",
                'action' => 'edit',
                'params' => [$jhonatan->id]
            ]);

            return;
        }

        $this->flash->success("Jhonatan was updated successfully");

        $this->dispatcher->forward([
            'controller' => "Jhonatan",
            'action' => 'index'
        ]);
    }

    /**
     * Deletes a Jhonatan
     *
     * @param string $id
     */
    public function deleteAction($id)
    {
        $jhonatan = Jhonatan::findFirstByid($id);
        if (!$jhonatan) {
            $this->flash->error("Jhonatan was not found");

            $this->dispatcher->forward([
                'controller' => "Jhonatan",
                'action' => 'index'
            ]);

            return;
        }

        if (!$jhonatan->delete()) {

            foreach ($jhonatan->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "Jhonatan",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("Jhonatan was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "Jhonatan",
            'action' => "index"
        ]);
    }
}
