.class Lelectrum2/drums/drumsettings$1;
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
    iput-object p1, p0, Lelectrum2/drums/drumsettings$1;->this$0:Lelectrum2/drums/drumsettings;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 238
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->retrigger:Z

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 242
    iget-object v0, p0, Lelectrum2/drums/drumsettings$1;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v0, v0, Lelectrum2/drums/drumsettings;->retrigbutton:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->retrigger:Z

    .line 250
    iget-object v0, p0, Lelectrum2/drums/drumsettings$1;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v0, v0, Lelectrum2/drums/drumsettings;->retrigbutton:Landroid/widget/Button;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
