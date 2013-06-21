.class Lelectrum2/drums/drumsettings$11;
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
    iput-object p1, p0, Lelectrum2/drums/drumsettings$11;->this$0:Lelectrum2/drums/drumsettings;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 793
    const/16 v3, 0x5622

    invoke-static {v3, v4, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    .line 795
    .local v2, testval:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 797
    :cond_0
    iget-object v3, p0, Lelectrum2/drums/drumsettings$11;->this$0:Lelectrum2/drums/drumsettings;

    const-string v4, "Sorry, but your device does not support recording in the format needed!"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 799
    .local v1, temptoast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 826
    .end local v1           #temptoast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 804
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lelectrum2/drums/drumsettings$11;->this$0:Lelectrum2/drums/drumsettings;

    const-class v4, Lelectrum2/drums/recordactivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    .local v0, i:Landroid/content/Intent;
    sput-boolean v5, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 810
    iget-object v3, p0, Lelectrum2/drums/drumsettings$11;->this$0:Lelectrum2/drums/drumsettings;

    iput-boolean v5, v3, Lelectrum2/drums/drumsettings;->WasRecording:Z

    .line 812
    iget-object v3, p0, Lelectrum2/drums/drumsettings$11;->this$0:Lelectrum2/drums/drumsettings;

    const/16 v4, 0xd75

    invoke-virtual {v3, v0, v4}, Lelectrum2/drums/drumsettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
