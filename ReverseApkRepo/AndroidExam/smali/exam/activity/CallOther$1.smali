.class Lexam/activity/CallOther$1;
.super Ljava/lang/Object;
.source "CallOther.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/activity/CallOther;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/CallOther;


# direct methods
.method constructor <init>(Lexam/activity/CallOther;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/activity/CallOther$1;->this$0:Lexam/activity/CallOther;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 29
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 30
    const-string v3, "http://www.google.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 29
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lexam/activity/CallOther$1;->this$0:Lexam/activity/CallOther;

    invoke-virtual {v2, v0}, Lexam/activity/CallOther;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 34
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    const-string v3, "tel:015-123-4567"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lexam/activity/CallOther$1;->this$0:Lexam/activity/CallOther;

    invoke-virtual {v2, v0}, Lexam/activity/CallOther;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 38
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/test.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 40
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v2, p0, Lexam/activity/CallOther$1;->this$0:Lexam/activity/CallOther;

    invoke-virtual {v2, v0}, Lexam/activity/CallOther;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "exam.Input"

    const-string v4, "exam.Input.Input"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    iget-object v2, p0, Lexam/activity/CallOther$1;->this$0:Lexam/activity/CallOther;

    invoke-virtual {v2, v0}, Lexam/activity/CallOther;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x7f0c0004
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
