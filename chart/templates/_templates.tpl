{{- define "libPrimitiveConfigMap.configmap.v1.tpl" -}}
{{- $testValueMessage := include "libPrimitiveUtils.default-check-required-value-msg.v1" . -}}
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ required (printf $testValueMessage "configmap.name") .Values.name | quote }}
  labels:
    {{- include "libPrimitiveUtils.labels.v1" . | nindent 4 }}
data: {}
{{- end }}