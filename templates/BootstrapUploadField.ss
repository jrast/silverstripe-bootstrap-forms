<ul class="ss-uploadfield-files files">
	<% if $Items %>
		<% loop $Items %>
			<li class="ss-uploadfield-item template-download" data-fileid="$ID">
				<div class="ss-uploadfield-item-preview preview"><span>
					<img alt="$hasRelation" src="$UploadFieldThumbnailURL" />
				</span></div>
				<div class="ss-uploadfield-item-info">
					<label class="ss-uploadfield-item-name">
						<b>{$Title}.{$Extension}</b>
						<span>$Size</span>
						<div class="clear"><!-- --></div>
					</label>
					<div class="ss-uploadfield-item-actions">
						<% if Top.isDisabled || Top.isReadonly %>
						<% else %>
							$UploadFieldFileButtons
						<% end_if %>
					</div>
				</div>
				<div class="ss-uploadfield-item-editform loading includeParent">
					<iframe frameborder="0" src="$UploadFieldEditLink"></iframe>
				</div>
			</li>
		<% end_loop %>
	<% end_if %>
</ul>
<% if isDisabled || isReadonly %>
	<% if isSaveable %>
	<% else %>
		<div class="ss-uploadfield-item">
			<em><% _t('FileIFrameField.ATTACHONCESAVED2', 'Files can be attached once you have saved the record for the first time.') %></em>
		</div>
	<% end_if %>
<% else %>
<div>
    <h4>
    <% if $multiple %>
        <% _t('UploadField.ATTACHFILES', 'Attach files') %>
    <% else %>
        <% _t('UploadField.ATTACHFILE', 'Attach a file') %>
    <% end_if %>
    </h4>
</div>
<div class="ss-uploadfield-item ss-uploadfield-addfile<% if $Items && $displayInput %> borderTop<% end_if %>" <% if not $displayInput %>style="display: none;"<% end_if %>>
     <div class="ss-uploadfield-item-preview ss-uploadfield-dropzone">
         <% if $multiple %>
            <% _t('UploadField.DROPFILES', 'drop files') %>
         <% else %>
            <% _t('UploadField.DROPFILE', 'drop a file') %>
         <% end_if %>
     </div>
     <div class="ss-uploadfield-item-info">
         <input id="$id" name="$getName" class="$extraClass ss-uploadfield-fromcomputer-fileinput input-file" data-config="$configString" type="file"<% if $multiple %> multiple="multiple"<% end_if %> />
         <button class="ss-uploadfield-fromfiles btn btn-info" title="<% _t('UploadField.FROMCOMPUTERINFO', 'Select from files') %>" ><i class="icon-file"></i> <% _t('UploadField.FROMFILES', 'From files') %></button>
         <% if not $autoUpload %>                            
            <button class="ss-uploadfield-startall btn btn-success" title="<% _t('UploadField.STARTALLINFO', 'Start all uploads') %>" ><i class="icon-upload"></i> <% _t('UploadField.STARTALL', 'Start all') %></button>
         <% end_if %>
     </div>
</div>
<% end_if %>
