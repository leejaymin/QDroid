.class Lelectrum2/drums/bpmsettings$4;
.super Ljava/lang/Object;
.source "bpmsettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/bpmsettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/bpmsettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/bpmsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/bpmsettings$4;->this$0:Lelectrum2/drums/bpmsettings;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 372
    sget-boolean v0, Lelectrum2/drums/globalSounds;->showslotlights:Z

    if-eqz v0, :cond_0

    .line 375
    sput-boolean v1, Lelectrum2/drums/globalSounds;->showslotlights:Z

    .line 376
    iget-object v0, p0, Lelectrum2/drums/bpmsettings$4;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v0, v0, Lelectrum2/drums/bpmsettings;->showpatternlights:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 387
    :goto_0
    return-void

    .line 380
    :cond_0
    sput-boolean v2, Lelectrum2/drums/globalSounds;->showslotlights:Z

    .line 381
    iget-object v0, p0, Lelectrum2/drums/bpmsettings$4;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v0, v0, Lelectrum2/drums/bpmsettings;->showpatternlights:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
