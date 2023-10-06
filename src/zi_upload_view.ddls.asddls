@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'File Upload Interface View'
define root view entity ZI_UPLOAD_VIEW as select from ztab_upload_0857
{
    key crnumber as crNumber,
    busi_process as busiProcess,
    comments as comments,
    
    @Semantics.largeObject:
    { mimeType: 'MimeType',
      fileName: 'FileName',
      contentDispositionPreference: #INLINE }
    attachment as attachment,
    
    @Semantics.mimeType: true
    mimetype as mimeType,
    
    filename as fileName,
    
    @Semantics.user.createdBy: true
    created_by as createdBy,
    
    @Semantics.systemDateTime.lastChangedAt: true
    created_at as createdAt,
    
    @Semantics.user.localInstanceLastChangedBy: true
    local_createdby as localCreatedby,
    
    @Semantics.systemDateTime.lastChangedAt: true
    local_createdat as localCreatedat
    
}
