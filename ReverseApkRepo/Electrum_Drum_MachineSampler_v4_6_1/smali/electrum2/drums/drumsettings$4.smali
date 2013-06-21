.class Lelectrum2/drums/drumsettings$4;
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
    iput-object p1, p0, Lelectrum2/drums/drumsettings$4;->this$0:Lelectrum2/drums/drumsettings;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 320
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v0}, Lelectrum2/drums/soundObj;->PasteSound()V

    .line 322
    iget-object v0, p0, Lelectrum2/drums/drumsettings$4;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->InitDisplayValues()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$3(Lelectrum2/drums/drumsettings;)V

    .line 324
    iget-object v0, p0, Lelectrum2/drums/drumsettings$4;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->DoFxButtonColors()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$2(Lelectrum2/drums/drumsettings;)V

    .line 327
    return-void
.end method
