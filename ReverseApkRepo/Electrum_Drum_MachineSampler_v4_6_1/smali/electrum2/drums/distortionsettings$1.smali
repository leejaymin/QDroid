.class Lelectrum2/drums/distortionsettings$1;
.super Ljava/lang/Object;
.source "distortionsettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/distortionsettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/distortionsettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/distortionsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/distortionsettings$1;->this$0:Lelectrum2/drums/distortionsettings;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 81
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 83
    sget-object v1, Lelectrum2/drums/globalSounds;->lockstring:Ljava/lang/String;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/distortionsettings$1;->this$0:Lelectrum2/drums/distortionsettings;

    #calls: Lelectrum2/drums/distortionsettings;->ClearFx()V
    invoke-static {v0}, Lelectrum2/drums/distortionsettings;->access$0(Lelectrum2/drums/distortionsettings;)V

    .line 83
    monitor-exit v1

    .line 102
    :goto_0
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 91
    :cond_0
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->hasDistortion:Z

    .line 93
    sget-object v1, Lelectrum2/drums/globalSounds;->lockstring:Ljava/lang/String;

    monitor-enter v1

    .line 95
    :try_start_1
    iget-object v0, p0, Lelectrum2/drums/distortionsettings$1;->this$0:Lelectrum2/drums/distortionsettings;

    #calls: Lelectrum2/drums/distortionsettings;->DoFx()V
    invoke-static {v0}, Lelectrum2/drums/distortionsettings;->access$1(Lelectrum2/drums/distortionsettings;)V

    .line 93
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
