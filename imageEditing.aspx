
<dx:ASPxImage ID="imagemSelect" ClientIDMode="Static"  width="40%" ClientInstanceName="imagemSelect" runat="server"></dx:ASPxImage>
<table>
    <tr>
        <td>
            <dx:ASPxLabel runat="server" ID="Zoom" Text="Zoom"/>
        </td>
        <td>
             <dx:ASPxComboBox ID="cmbSizeImage" runat="server" Width="50px" SelectedIndex="3" EnableCallbackMode="true" ClientInstanceName="cmbSizeImage">
                <Items>
                    <dx:ListEditItem Text="10%" Value="10%" />
                    <dx:ListEditItem Text="20%" Value="20%" />
                    <dx:ListEditItem Text="30%" Value="30%" />
                    <dx:ListEditItem Text="40%" Value="40%" />
                    <dx:ListEditItem Text="50%" Value="50%" />
                    <dx:ListEditItem Text="60%" Value="60%" />
                    <dx:ListEditItem Text="70%" Value="70%" />
                    <dx:ListEditItem Text="80%" Value="80%" />
                    <dx:ListEditItem Text="90%" Value="90%" />
                    <dx:ListEditItem Text="100%" Value="100%" />
                    <dx:ListEditItem Text="110%" Value="110%" />
                    <dx:ListEditItem Text="120%" Value="120%" />
                    <dx:ListEditItem Text="130%" Value="130%" />
                    <dx:ListEditItem Text="140%" Value="140%" />
                    <dx:ListEditItem Text="150%" Value="150%" />
                </Items>
                 <ClientSideEvents ValueChanged="function(s,e){getImageSize();}" />
            </dx:ASPxComboBox>
        </td>
        <td style="width:20px;">
        </td>
        <td>
           <input type="checkbox" class="cor" id="cor" checked="checked" />
        </td>
        <td>
            <dx:ASPxLabel runat="server" ID="ASPxLabel1" Text="Colorido"/>
        </td>
        <td>
           <input type="checkbox" class="Negative" id="Negative"/>
        </td>
        <td>
            <dx:ASPxLabel runat="server" ID="ASPxLabel2" Text="Negative"/>
        </td>
        <td style="width:20px;">
        </td>
        <td class="range lpme">
        </td>
        <td>
           <input id="brightness_range" type="range"/>
        </td>
        <td class="range lpma">
        </td>
        <td style="width:20px;">
        </td>
        <td>
            <dx:ASPxButton ID="btnReset" ClientInstanceName="btnReset" Text="Restaurar" AutoPostBack="false" runat="server" Width="100px" Height="30px">
                <ClientSideEvents Click="function(s,e){reset();}" />
            </dx:ASPxButton>
        </td>
        <td style="width:20px;">
        </td>
        <td>
            <dx:ASPxButton ID="btnClose" ClientInstanceName="btnClose" Text="Close" AutoPostBack="false" runat="server" Width="100px" Height="30px">
                <ClientSideEvents Click="function(s,e){window.close();}" />
            </dx:ASPxButton>
        </td>
    </tr>
</table>
</center>
</div>
<script>
        
        // change color image black / white | colorful
        $('#cor').change(function () {
            if ($(this).is(":checked")) {
                $("#imagemSelect").addClass("rblackwhite");
                $("#imagemSelect").removeClass("blackwhite");
            } else {
                $("#imagemSelect").addClass("blackwhite");
                $("#imagemSelect").removeClass("rblackwhite");
            }
        });
        
        // inverts the color of the image to negative
        $('#negative').change(function () {
            if ($(this).is(":checked")) {
                $("#imagemSelect").addClass("negative");
                $("#imagemSelect").removeClass("rnegative");
            } else {
                $("#imagemSelect").addClass("rnegative");
                $("#imagemSelect").removeClass("negative");
            }
        });

        //aumenta o tamanho da imagem de acordo com o valor do combo
        function getImageSize() {
            var size = cmbSizeImage.GetValue();
            $("#imagemSelect").css("width", size);
        }
        
        //increases the image size according to the value of the combo
        jQuery('#brightness_range').change(function () {
            var img = document.getElementById('imagemSelect');
            var brightness_val = (parseInt(jQuery('#brightness_range').val())) * 3;
            $brightness_string = "brightness(" + brightness_val + "%)",
            $saturation_string = "saturate(" + brightness_val + "%)";
            $('#imagemSelect').css("-webkit-filter", $brightness_string + $saturation_string);
        });

        // reset page, image back to the initial state of the register
        function reset() {
            location.reload();
        }
</script>	