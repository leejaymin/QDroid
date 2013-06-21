.class Lelectrum2/drums/drumsettings$17;
.super Ljava/lang/Object;
.source "drumsettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/drumsettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/drumsettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/drumsettings$17;->this$0:Lelectrum2/drums/drumsettings;

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x8

    .line 1066
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1068
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lelectrum2/drums/drumsettings$17;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v2, v2, Lelectrum2/drums/drumsettings;->drumname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, newDrumName:Ljava/lang/String;
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 1073
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1077
    :cond_0
    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-object v1, v2, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    .line 1083
    iget-object v2, p0, Lelectrum2/drums/drumsettings$17;->this$0:Lelectrum2/drums/drumsettings;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lelectrum2/drums/drumsettings;->setResult(ILandroid/content/Intent;)V

    .line 1085
    iget-object v2, p0, Lelectrum2/drums/drumsettings$17;->this$0:Lelectrum2/drums/drumsettings;

    invoke-virtual {v2}, Lelectrum2/drums/drumsettings;->finish()V

    .line 1088
    return-void
.end method
