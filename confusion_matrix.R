# tabulate each combination of prediction and actual value
table(predicted = y_hat, actual = test_set$sex)
test_set %>% 
  mutate(y_hat = y_hat) %>%
  group_by(sex) %>% 
  summarize(accuracy = mean(y_hat == sex))
prev <- mean(y == "Male")

confusionMatrix(data = y_hat, reference = test_set$sex)

### Sensitividade taxa de verdadeiro positivo � a propor��o de 
# observa��es verdadeiramente positivas corretamente classificadas.
### Especificidade tava de verdadeiro negativo � a propor��o de 
# observa��es que deram resultado negativo corretamente classificado.
