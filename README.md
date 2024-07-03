# Container que roda o tratapdf

Uso: montar documento de entrada como `/root/tratapdf/input.pdf` e saída como `/inputpdfjam-tratado.pdf`.

## Exemplo:

```bash
touch saida.pdf
docker run -v meupdf.pdf:/root/tratapdf/input.pdf -v ./saida.pdf:/inputpdfjam-tratado.pdf tratadocker
```
