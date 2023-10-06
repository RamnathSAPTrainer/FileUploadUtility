@EndUserText.label: 'File Upload Consumption View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_UPLOAD_VIEW
  provider contract transactional_query as projection on ZI_UPLOAD_VIEW
{
    key crNumber,
    busiProcess,
    comments,
    attachment,
    mimeType as MimeType,
    fileName as FileName,
    localCreatedat
}
