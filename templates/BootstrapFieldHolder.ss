<div id="$Name" class="$HolderClasses" $HolderAttributes>
    <label class="control-label" for="$ID">$Title</label>
    <div class="controls">
        $Field
        
        <% if HelpText %>
        <p class="help-block">$HelpText</p>
        <% end_if %>
        <% if InlineHelpText %>
        <span class="help-inline">$InlineHelpText</span>
        <% end_if %>    
    </div>
</div>

