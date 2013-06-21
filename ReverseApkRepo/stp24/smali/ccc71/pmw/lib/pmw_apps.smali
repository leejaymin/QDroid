.class public Lccc71/pmw/lib/pmw_apps;
.super Lccc71/pmw/lib/pmw_tab_activity;
.source "SourceFile"


# static fields
.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x800

    sput v0, Lccc71/pmw/lib/pmw_apps;->c:I

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_tab_activity;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lccc71/pmw/lib/pmw_apps;->c:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 33
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_tab_activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_apps;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_apps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_apps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    const-string v0, "android.intent.extra.shortcut.NAME"

    sget v2, Lccc71/pmw/lib/g;->bj:I

    invoke-virtual {p0, v2}, Lccc71/pmw/lib/pmw_apps;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    sget v0, Lccc71/pmw/lib/c;->ay:I

    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 47
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lccc71/pmw/lib/pmw_apps;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_apps;->finish()V

    .line 205
    :goto_0
    return-void

    .line 55
    :cond_0
    sget v0, Lccc71/pmw/lib/e;->bd:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_apps;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_apps;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    .line 61
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Lccc71/utils/android/z;->a(F)Lccc71/utils/android/z;

    move-result-object v0

    .line 63
    const-string v2, "ccc71.pmw.app_id"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 65
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_apps;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_7

    .line 68
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Importing file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 75
    new-instance v2, Lccc71/pmw/lib/cq;

    invoke-direct {v2, p0, v1}, Lccc71/pmw/lib/cq;-><init>(Lccc71/pmw/lib/pmw_apps;Ljava/lang/String;)V

    new-array v1, v9, [Ljava/lang/Void;

    .line 139
    invoke-virtual {v2, v1}, Lccc71/pmw/lib/cq;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    move v6, v7

    .line 142
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/pmw/lib/pmw_easy_apps;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    .line 143
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    const-string v2, "easy"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 144
    sget v3, Lccc71/pmw/lib/c;->f:I

    sget v4, Lccc71/pmw/lib/g;->dF:I

    if-nez v6, :cond_1

    move v1, v8

    :goto_2
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->dF:I

    sget v5, Lccc71/pmw/lib/c;->A:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 145
    invoke-virtual {v2, v10}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 146
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 148
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    .line 149
    const-string v1, "startup"

    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    const-string v2, "startup"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 151
    sget v3, Lccc71/pmw/lib/c;->aK:I

    sget v4, Lccc71/pmw/lib/g;->eZ:I

    if-ne v6, v8, :cond_2

    move v1, v8

    :goto_3
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->eZ:I

    sget v5, Lccc71/pmw/lib/c;->F:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 152
    invoke-virtual {v2, v10}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 153
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 155
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/pmw/lib/pmw_event_apps;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    .line 156
    const-string v1, "startup"

    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 158
    sget v3, Lccc71/pmw/lib/c;->m:I

    sget v4, Lccc71/pmw/lib/g;->dJ:I

    const/4 v1, 0x2

    if-ne v6, v1, :cond_3

    move v1, v8

    :goto_4
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->dJ:I

    sget v5, Lccc71/pmw/lib/c;->B:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 159
    invoke-virtual {v2, v10}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 160
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 162
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    .line 163
    const-string v1, "user"

    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 165
    sget v3, Lccc71/pmw/lib/c;->a:I

    sget v4, Lccc71/pmw/lib/g;->fp:I

    const/4 v1, 0x3

    if-ne v6, v1, :cond_4

    move v1, v8

    :goto_5
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->fp:I

    sget v5, Lccc71/pmw/lib/c;->J:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 166
    invoke-virtual {v2, v10}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 167
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    .line 170
    const-string v1, "user"

    invoke-virtual {v10, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    const-string v2, "sys"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 172
    sget v3, Lccc71/pmw/lib/c;->d:I

    sget v4, Lccc71/pmw/lib/g;->fe:I

    const/4 v1, 0x4

    if-ne v6, v1, :cond_5

    move v1, v8

    :goto_6
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->fe:I

    sget v5, Lccc71/pmw/lib/c;->G:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 173
    invoke-virtual {v2, v10}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 174
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 176
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    .line 177
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    const-string v2, "backups"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 178
    sget v1, Lccc71/pmw/lib/c;->f:I

    sget v3, Lccc71/pmw/lib/g;->cY:I

    if-ne v6, v7, :cond_6

    :goto_7
    invoke-virtual {v0, p0, v1, v3, v8}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->cY:I

    sget v5, Lccc71/pmw/lib/c;->y:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 179
    invoke-virtual {v2, v10}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 180
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 182
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 183
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Lccc71/utils/android/z;->a(Landroid/widget/TabHost;)V

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lccc71/pmw/lib/cr;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/cr;-><init>(Lccc71/pmw/lib/pmw_apps;)V

    .line 204
    const-wide/16 v2, 0x1f4

    .line 185
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    move v1, v9

    .line 144
    goto/16 :goto_2

    :cond_2
    move v1, v9

    .line 151
    goto/16 :goto_3

    :cond_3
    move v1, v9

    .line 158
    goto/16 :goto_4

    :cond_4
    move v1, v9

    .line 165
    goto/16 :goto_5

    :cond_5
    move v1, v9

    .line 172
    goto :goto_6

    :cond_6
    move v8, v9

    .line 178
    goto :goto_7

    :cond_7
    move v6, v1

    goto/16 :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 210
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_tab_activity;->onNewIntent(Landroid/content/Intent;)V

    .line 212
    const-string v0, "ccc71.pmw.app_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 214
    iget-object v1, p0, Lccc71/pmw/lib/pmw_apps;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 215
    return-void
.end method
