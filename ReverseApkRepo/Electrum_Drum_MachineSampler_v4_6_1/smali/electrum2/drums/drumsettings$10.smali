.class Lelectrum2/drums/drumsettings$10;
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
    iput-object p1, p0, Lelectrum2/drums/drumsettings$10;->this$0:Lelectrum2/drums/drumsettings;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 740
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_1

    .line 742
    sget-object v0, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    .line 768
    :cond_0
    :goto_0
    iget-object v0, p0, Lelectrum2/drums/drumsettings$10;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->InitDisplayValues()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$3(Lelectrum2/drums/drumsettings;)V

    .line 770
    iget-object v0, p0, Lelectrum2/drums/drumsettings$10;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->DoFxButtonColors()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$2(Lelectrum2/drums/drumsettings;)V

    .line 772
    return-void

    .line 744
    :cond_1
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound2:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_2

    .line 746
    sget-object v0, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 747
    :cond_2
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound3:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_3

    .line 749
    sget-object v0, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 750
    :cond_3
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound4:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_4

    .line 752
    sget-object v0, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 753
    :cond_4
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound5:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_5

    .line 755
    sget-object v0, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 756
    :cond_5
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound6:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_6

    .line 758
    sget-object v0, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 759
    :cond_6
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound7:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_7

    .line 761
    sget-object v0, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0

    .line 762
    :cond_7
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v1, Lelectrum2/drums/globalSounds;->sound8:Lelectrum2/drums/soundObj;

    if-ne v0, v1, :cond_0

    .line 764
    sget-object v0, Lelectrum2/drums/globalSounds;->sound1:Lelectrum2/drums/soundObj;

    sput-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    goto :goto_0
.end method
