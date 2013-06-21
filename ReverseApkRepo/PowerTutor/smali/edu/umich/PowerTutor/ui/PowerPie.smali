.class public Ledu/umich/PowerTutor/ui/PowerPie;
.super Landroid/app/Activity;
.source "PowerPie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;
    }
.end annotation


# static fields
.field public static final COLORS:[I = null

.field private static final DIALOG_WINDOW:I = 0x0

.field private static final MENU_WINDOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerPie"


# instance fields
.field private collector:Ljava/lang/Runnable;

.field private componentNames:[Ljava/lang/String;

.field private conn:Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;

.field private counterService:Ledu/umich/PowerTutor/service/ICounterService;

.field private displayText:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private noUidMask:I

.field private prefs:Landroid/content/SharedPreferences;

.field private serviceIntent:Landroid/content/Intent;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ledu/umich/PowerTutor/ui/PowerPie;->COLORS:[I

    .line 54
    return-void

    .line 72
    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
        0xcct 0xcct 0xcct 0xfft
        0x44t 0x44t 0x44t 0xfft
        0xfft 0xfft 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/ui/PowerPie;Ledu/umich/PowerTutor/service/ICounterService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-void
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/ui/PowerPie;)Ledu/umich/PowerTutor/service/ICounterService;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-object v0
.end method

.method static synthetic access$10(Ledu/umich/PowerTutor/ui/PowerPie;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/ui/PowerPie;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->componentNames:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Ledu/umich/PowerTutor/ui/PowerPie;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->noUidMask:I

    return-void
.end method

.method static synthetic access$4(Ledu/umich/PowerTutor/ui/PowerPie;)Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->conn:Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;

    return-object v0
.end method

.method static synthetic access$5(Ledu/umich/PowerTutor/ui/PowerPie;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->serviceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6(Ledu/umich/PowerTutor/ui/PowerPie;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->uid:I

    return v0
.end method

.method static synthetic access$7(Ledu/umich/PowerTutor/ui/PowerPie;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$8(Ledu/umich/PowerTutor/ui/PowerPie;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->noUidMask:I

    return v0
.end method

.method static synthetic access$9(Ledu/umich/PowerTutor/ui/PowerPie;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->componentNames:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->prefs:Landroid/content/SharedPreferences;

    .line 209
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerPie;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->uid:I

    .line 211
    if-eqz p1, :cond_0

    .line 212
    const-string v0, "componentNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->componentNames:[Ljava/lang/String;

    .line 213
    const-string v0, "noUidMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->noUidMask:I

    .line 216
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->serviceIntent:Landroid/content/Intent;

    .line 217
    new-instance v0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;-><init>(Ledu/umich/PowerTutor/ui/PowerPie;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->conn:Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;

    .line 218
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 292
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 282
    :pswitch_0
    const-string v1, "Select window type"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    sget-object v1, Ledu/umich/PowerTutor/util/Counter;->WINDOW_NAMES:[Ljava/lang/CharSequence;

    .line 284
    new-instance v2, Ledu/umich/PowerTutor/ui/PowerPie$2;

    invoke-direct {v2, p0}, Ledu/umich/PowerTutor/ui/PowerPie$2;-><init>(Ledu/umich/PowerTutor/ui/PowerPie;)V

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 251
    const-string v0, "Time Span"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 274
    :goto_0
    return v0

    .line 271
    :pswitch_0
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerPie;->showDialog(I)V

    .line 272
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 232
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerPie;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->conn:Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 233
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->collector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->collector:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->handler:Landroid/os/Handler;

    .line 237
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 264
    return v2

    .line 262
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 223
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->handler:Landroid/os/Handler;

    .line 224
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerPie;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->serviceIntent:Landroid/content/Intent;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerPie;->conn:Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 226
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerPie;->refreshView()V

    .line 227
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    const-string v0, "componentNames"

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->componentNames:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    const-string v0, "noUidMask"

    iget v1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->noUidMask:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    return-void
.end method

.method public refreshView()V
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/high16 v8, 0x4170

    .line 78
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    if-nez v6, :cond_0

    .line 79
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v2, loadingText:Landroid/widget/TextView;
    const-string v6, "Waiting for profiler service..."

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    invoke-virtual {p0, v2}, Ledu/umich/PowerTutor/ui/PowerPie;->setContentView(Landroid/view/View;)V

    .line 175
    .end local v2           #loadingText:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->uid:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 90
    const/4 v6, 0x0

    iput v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->noUidMask:I

    .line 93
    :cond_1
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->displayText:Landroid/widget/TextView;

    .line 94
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->displayText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerPie;->updateDisplayText()V

    .line 97
    new-instance v5, Lorg/achartengine/model/CategorySeries;

    const-string v6, ""

    invoke-direct {v5, v6}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 98
    .local v5, series:Lorg/achartengine/model/CategorySeries;
    new-instance v4, Lorg/achartengine/renderer/DefaultRenderer;

    invoke-direct {v4}, Lorg/achartengine/renderer/DefaultRenderer;-><init>()V

    .line 99
    .local v4, renderer:Lorg/achartengine/renderer/DefaultRenderer;
    invoke-virtual {v4, v8}, Lorg/achartengine/renderer/DefaultRenderer;->setLabelsTextSize(F)V

    .line 100
    invoke-virtual {v4, v8}, Lorg/achartengine/renderer/DefaultRenderer;->setLegendTextSize(F)V

    .line 101
    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/DefaultRenderer;->setMargins([I)V

    .line 103
    new-instance v3, Lorg/achartengine/chart/PieChart;

    invoke-direct {v3, v5, v4}, Lorg/achartengine/chart/PieChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 104
    .local v3, pieChart:Lorg/achartengine/chart/PieChart;
    new-instance v0, Lorg/achartengine/GraphicalView;

    invoke-direct {v0, p0, v3}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    .line 109
    .local v0, chartView:Lorg/achartengine/GraphicalView;
    new-instance v6, Ledu/umich/PowerTutor/ui/PowerPie$1;

    invoke-direct {v6, p0, v5, v4, v0}, Ledu/umich/PowerTutor/ui/PowerPie$1;-><init>(Ledu/umich/PowerTutor/ui/PowerPie;Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;Lorg/achartengine/GraphicalView;)V

    iput-object v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->collector:Ljava/lang/Runnable;

    .line 166
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_2

    .line 167
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->handler:Landroid/os/Handler;

    iget-object v7, p0, Ledu/umich/PowerTutor/ui/PowerPie;->collector:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    :cond_2
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, layout:Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/PowerPie;->displayText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/PowerPie;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 101
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public updateDisplayText()V
    .locals 6

    .prologue
    .line 178
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie;->displayText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Displaying energy usage over "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    sget-object v2, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DESCS:[Ljava/lang/CharSequence;

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/PowerPie;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "pieWindowType"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerPie;->uid:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v0, " the entire phone."

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v3

    iget v4, p0, Ledu/umich/PowerTutor/ui/PowerPie;->uid:I

    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerPie;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidName(ILandroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
