{{- define "operator.name" }}
{{- $name := default .Values.name .Release.Name }}
{{- print $name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "operator.namespace" }}
{{- $namespace := default .Values.namespace .Release.Namespace }}
{{- print $namespace | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "operator.operatorGroupName" }}
{{- $operatorGroupName := default .Values.operatorGroupName .Release.operatorGroupName }}
{{- print $operatorGroupName | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "operator.subscriptionName" }}
{{- $subscriptionName := default .Values.subscriptionName .Release.Name }}
{{- print $subscriptionName }}
{{- end }}

{{- define "operator.operatorChannel" }}
{{- $operatorChannel := .Values.operatorChannel }}
{{- print $operatorChannel }}
{{- end }}
