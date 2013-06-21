.class Lelectrum2/drums/drumsettings$9;
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
    iput-object p1, p0, Lelectrum2/drums/drumsettings$9;->this$0:Lelectrum2/drums/drumsettings;

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 695
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_1

    .line 697
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    .line 723
    :cond_0
    :goto_0
    iget-object v0, p0, Lelectrum2/drums/drumsettings$9;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->InitDisplayValues()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$3(Lelectrum2/drums/drumsettings;)V

    .line 726
    iget-object v0, p0, Lelectrum2/drums/drumsettings$9;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->DoFxButtonColors()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$2(Lelectrum2/drums/drumsettings;)V

    .line 729
    return-void

    .line 699
    :cond_1
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_2

    .line 701
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 702
    :cond_2
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_3

    .line 704
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 705
    :cond_3
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_4

    .line 707
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 708
    :cond_4
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_5

    .line 710
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 711
    :cond_5
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_6

    .line 713
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 714
    :cond_6
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_7

    .line 716
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 717
    :cond_7
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_0

    .line 719
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0
.end method
