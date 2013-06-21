.class Lelectrum2/drums/drumsettings$6;
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
    iput-object p1, p0, Lelectrum2/drums/drumsettings$6;->this$0:Lelectrum2/drums/drumsettings;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 503
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lelectrum2/drums/drumsettings$6;->this$0:Lelectrum2/drums/drumsettings;

    const-class v2, Lelectrum2/drums/distortionsettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lelectrum2/drums/drumsettings$6;->this$0:Lelectrum2/drums/drumsettings;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lelectrum2/drums/drumsettings;->fxchanging:Z

    .line 507
    iget-object v1, p0, Lelectrum2/drums/drumsettings$6;->this$0:Lelectrum2/drums/drumsettings;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Lelectrum2/drums/drumsettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 510
    return-void
.end method
