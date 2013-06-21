.class Lelectrum2/drums/drumsettings$2;
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
    iput-object p1, p0, Lelectrum2/drums/drumsettings$2;->this$0:Lelectrum2/drums/drumsettings;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lelectrum2/drums/drumsettings$2;->this$0:Lelectrum2/drums/drumsettings;

    iput-boolean v1, v0, Lelectrum2/drums/drumsettings;->fxchanging:Z

    .line 270
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->hasReverse:Z

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-boolean v2, v0, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 274
    sget-object v1, Lelectrum2/drums/globalSounds;->lockstring:Ljava/lang/String;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/drumsettings$2;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->ClearFx()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$0(Lelectrum2/drums/drumsettings;)V

    .line 274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_0
    iget-object v0, p0, Lelectrum2/drums/drumsettings$2;->this$0:Lelectrum2/drums/drumsettings;

    iput-boolean v2, v0, Lelectrum2/drums/drumsettings;->fxchanging:Z

    .line 292
    iget-object v0, p0, Lelectrum2/drums/drumsettings$2;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v0, v0, Lelectrum2/drums/drumsettings;->wave:Lelectrum2/drums/wavedisplay;

    invoke-virtual {v0}, Lelectrum2/drums/wavedisplay;->invalidate()V

    .line 294
    iget-object v0, p0, Lelectrum2/drums/drumsettings$2;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->DoFxButtonColors()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$2(Lelectrum2/drums/drumsettings;)V

    .line 295
    return-void

    .line 274
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 282
    :cond_0
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-boolean v1, v0, Lelectrum2/drums/soundObj;->hasReverse:Z

    .line 284
    sget-object v1, Lelectrum2/drums/globalSounds;->lockstring:Ljava/lang/String;

    monitor-enter v1

    .line 286
    :try_start_2
    iget-object v0, p0, Lelectrum2/drums/drumsettings$2;->this$0:Lelectrum2/drums/drumsettings;

    #calls: Lelectrum2/drums/drumsettings;->DoFx()V
    invoke-static {v0}, Lelectrum2/drums/drumsettings;->access$1(Lelectrum2/drums/drumsettings;)V

    .line 284
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
