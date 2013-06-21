.class Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;
.super Ljava/lang/Object;
.source "It_Crowd_Sounds.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundboard/itcrowd/It_Crowd_Sounds;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;


# direct methods
.method constructor <init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "id"

    .prologue
    const-string v5, "/sdcard/"

    const-string v5, ".mp3"

    .line 1149
    :try_start_0
    iget-object v5, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    const v6, 0x7f040005

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/sdcard/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    const v9, 0x7f060018

    invoke-virtual {v8, v9}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->copy(ILjava/lang/String;)V

    .line 1150
    iget-object v5, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    invoke-virtual {v5}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1152
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/sdcard/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    const v8, 0x7f060018

    invoke-virtual {v7, v8}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    const v9, 0x7f060018

    invoke-virtual {v8, v9}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->savetone(Ljava/lang/String;ILjava/lang/String;)V

    .line 1155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ringtone set to : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    const v7, 0x7f060018

    invoke-virtual {v6, v7}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1156
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1157
    .local v1, duration:I
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 1158
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1168
    return-void

    .line 1159
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #duration:I
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #toast:Landroid/widget/Toast;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1160
    .local v2, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;->this$0:Lcom/soundboard/itcrowd/It_Crowd_Sounds;

    invoke-virtual {v5}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1161
    .restart local v0       #context:Landroid/content/Context;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1162
    .restart local v3       #text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1163
    .restart local v1       #duration:I
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 1164
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
