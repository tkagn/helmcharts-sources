{{- define "operator.name" }}
{{- $name := default .Values.name }}
{{- print $name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "operator.namespace" }}
{{- $namespace := default .Values.namespace }}
{{- print $namespace | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "operator.operatorGroupName" }}
{{- $operatorGroupName := default .Values.operatorGroupName }}
{{- print $operatorGroupName | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "operator.subscriptionName" }}
{{- $subscriptionName := default .Values.subscriptionName }}
{{- print $subscriptionName }}
{{- end }}

{{- define "operator.operatorChannel" }}
{{- $operatorChannel := .Values.operatorChannel }}
{{- print $operatorChannel }}
{{- end }}
