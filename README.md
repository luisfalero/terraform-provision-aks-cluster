# Comandos comunes en Terraform

## Mostrar versión
```
$ terraform version
```

## Inicializar directorio de trabajo
```
$ terraform init
```

## Aprovisionar infraestructura

### Crear plan de ejecución
```
$ terraform plan
$ terraform plan -out <plan-name>.tfplan
$ terraform plan -out aks.tfplan
```
### Ejecutar cambios en entorno real
```
$ terraform apply
$ terraform apply <plan-name>.tfplan
$ terraform apply aks.tfplan
```
### Eliminar plan de ejecución
```
$ terraform plan -destroy
```
### Eliminar cambios en entorno real
```
$ terraform apply -destroy
```

## Validar sintaxis
```
$ terraform validate
```

## Crear gráfico de recursos
```
$ terraform graph
$ terraform graph > graph.dot
```