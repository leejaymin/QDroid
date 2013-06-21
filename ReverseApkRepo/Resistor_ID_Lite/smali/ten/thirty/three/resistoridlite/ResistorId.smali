.class public Lten/thirty/three/resistoridlite/ResistorId;
.super Landroid/app/Activity;
.source "ResistorId.java"


# static fields
.field protected static final CurrentVersion:I = 0xfd

.field protected static OPT_DIM:Z = false

.field protected static OPT_LOCK:Z = false

.field protected static OPT_SAVERES:Z = false

.field protected static final PREFS_FILE:Ljava/lang/String; = "resid_lite_prefs"

.field static final PRO_VERSION:Z


# instance fields
.field protected final MENU_ABOUT:I

.field protected final MENU_CALCS:I

.field protected final MENU_CALC_LED:I

.field protected final MENU_CALC_OHM:I

.field protected final MENU_CALC_REACT:I

.field protected final MENU_CALC_REV:I

.field protected final MENU_EXIT:I

.field protected final MENU_OPTIONS:I

.field protected final MENU_RBMODE:I

.field protected final MENU_UPGRADE:I

.field protected final RV_OPT:I

.field protected final RV_SET:I

.field currInstance:Landroid/os/Bundle;

.field rv:Lten/thirty/three/resistoridlite/ResistorView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 90
    sput-boolean v0, Lten/thirty/three/resistoridlite/ResistorId;->OPT_DIM:Z

    .line 91
    sput-boolean v0, Lten/thirty/three/resistoridlite/ResistorId;->OPT_LOCK:Z

    .line 92
    sput-boolean v0, Lten/thirty/three/resistoridlite/ResistorId;->OPT_SAVERES:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_EXIT:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_RBMODE:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_CALCS:I

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_CALC_OHM:I

    .line 81
    const/4 v0, 0x4

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_CALC_LED:I

    .line 82
    const/4 v0, 0x6

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_CALC_REV:I

    .line 83
    const/4 v0, 0x7

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_OPTIONS:I

    .line 84
    const/16 v0, 0x8

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_UPGRADE:I

    .line 85
    const/16 v0, 0x9

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_CALC_REACT:I

    .line 86
    const/4 v0, 0x5

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->MENU_ABOUT:I

    .line 96
    const/16 v0, 0x118

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->RV_SET:I

    .line 97
    const/16 v0, 0x119

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->RV_OPT:I

    .line 14
    return-void
.end method


# virtual methods
.method CheckVersionMsg(I)Z
    .locals 6
    .parameter "ver"

    .prologue
    const/4 v5, 0x1

    .line 328
    const/16 v2, 0xfd

    if-le v2, p1, :cond_0

    .line 330
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Thanks for downloading/updating. Fixed more floating point bugs in reverse lookup, max reverse lookup is 2x10^9. -- ANY issues please email me: dev1033@gmail.com"

    .line 332
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 334
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Don\'t show again"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 335
    const-string v3, "What\'s New"

    .line 334
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 338
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v2, v5

    .line 341
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method CommitSavedSettings()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->currInstance:Landroid/os/Bundle;

    const-string v1, "option_lock"

    sget-boolean v2, Lten/thirty/three/resistoridlite/ResistorId;->OPT_LOCK:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lten/thirty/three/resistoridlite/ResistorId;->OPT_LOCK:Z

    .line 169
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorId;->currInstance:Landroid/os/Bundle;

    const-string v1, "option_dim"

    sget-boolean v2, Lten/thirty/three/resistoridlite/ResistorId;->OPT_DIM:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lten/thirty/three/resistoridlite/ResistorId;->OPT_DIM:Z

    .line 171
    return-void
.end method

.method RestoreState()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 250
    const-string v2, "resid_lite_prefs"

    invoke-virtual {p0, v2, v4}, Lten/thirty/three/resistoridlite/ResistorId;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 251
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "5band"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 252
    .local v0, fband:Z
    const-string v2, "option_lock"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lten/thirty/three/resistoridlite/ResistorId;->OPT_LOCK:Z

    .line 253
    const-string v2, "option_dim"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lten/thirty/three/resistoridlite/ResistorId;->OPT_DIM:Z

    .line 254
    const-string v2, "option_saveres"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lten/thirty/three/resistoridlite/ResistorId;->OPT_SAVERES:Z

    .line 255
    sget-boolean v2, Lten/thirty/three/resistoridlite/ResistorId;->OPT_SAVERES:Z

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iget-boolean v2, v2, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eq v2, v0, :cond_0

    .line 257
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    invoke-virtual {v2}, Lten/thirty/three/resistoridlite/ResistorView;->SetResistorModeRetIfFiveBand()Z

    .line 258
    :cond_0
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v3, "band1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    .line 259
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v3, "band2"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    .line 260
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v3, "band3"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    .line 261
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v3, "band4"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 262
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v3, "band5"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    .line 263
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    invoke-virtual {v2}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    .line 265
    :cond_1
    return-void
.end method

.method SaveState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 280
    :try_start_0
    const-string v3, "resid_lite_prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lten/thirty/three/resistoridlite/ResistorId;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 281
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 282
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "5band"

    iget-object v4, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iget-boolean v4, v4, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 283
    const-string v3, "band1"

    iget-object v4, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iget v4, v4, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v3, "band2"

    iget-object v4, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iget v4, v4, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 285
    const-string v3, "band3"

    iget-object v4, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iget v4, v4, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v3, "band4"

    iget-object v4, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iget v4, v4, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v3, "band5"

    iget-object v4, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iget v4, v4, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v3, "option_dim"

    sget-boolean v4, Lten/thirty/three/resistoridlite/ResistorId;->OPT_DIM:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    const-string v3, "option_lock"

    sget-boolean v4, Lten/thirty/three/resistoridlite/ResistorId;->OPT_LOCK:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v3, "option_saveres"

    sget-boolean v4, Lten/thirty/three/resistoridlite/ResistorId;->OPT_SAVERES:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    const-string v3, "freshinstall"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string v3, "lastversion"

    const/16 v4, 0xfd

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 293
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 295
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Error saving instance state"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0
.end method

.method ShowAboutDialog()V
    .locals 5

    .prologue
    .line 174
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Designed and Developed by: Tristan Mann (dev1033). Please feel free to contact me with any questions at: dev1033@gmail.com"

    .line 176
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 178
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 179
    const-string v3, "About"

    .line 178
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 182
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 183
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "option_lock"

    const-string v7, "option_dim"

    .line 220
    const/16 v3, 0x118

    if-ne p1, v3, :cond_2

    .line 221
    if-ne p2, v4, :cond_0

    .line 223
    const-string v3, "5band"

    invoke-virtual {p3, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 225
    .local v1, fiveband:Z
    const/4 v1, 0x0

    .line 226
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v4, "ohm"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v1, :cond_1

    const/4 v5, 0x5

    :goto_0
    invoke-virtual {v3, v4, v5}, Lten/thirty/three/resistoridlite/ResistorView;->SetClosestResistor(II)V

    .line 247
    .end local v1           #fiveband:Z
    :cond_0
    :goto_1
    return-void

    .line 227
    .restart local v1       #fiveband:Z
    :cond_1
    const/4 v5, 0x4

    goto :goto_0

    .line 229
    .end local v1           #fiveband:Z
    :cond_2
    const/16 v3, 0x119

    if-ne p1, v3, :cond_0

    .line 230
    if-ne p2, v4, :cond_3

    .line 231
    const-string v3, "resid_lite_prefs"

    invoke-virtual {p0, v3, v5}, Lten/thirty/three/resistoridlite/ResistorId;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 232
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "option_dim"

    .line 234
    const-string v3, "option_dim"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 233
    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v3, "option_lock"

    .line 236
    const-string v3, "option_lock"

    invoke-virtual {p3, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 235
    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v3, "option_saveres"

    .line 238
    const-string v4, "option_saveres"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 237
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorId;->RestoreState()V

    .line 242
    const-string v3, "Settings Saved"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_1

    .line 244
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_3
    const-string v3, "Settings NOT Saved"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v3, "resid_lite_prefs"

    invoke-virtual {p0, v3, v5}, Lten/thirty/three/resistoridlite/ResistorId;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v3, "lastversion"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 34
    .local v2, ver:I
    invoke-virtual {p0, v2}, Lten/thirty/three/resistoridlite/ResistorId;->CheckVersionMsg(I)Z

    .line 39
    iput-object p1, p0, Lten/thirty/three/resistoridlite/ResistorId;->currInstance:Landroid/os/Bundle;

    .line 40
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->currInstance:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 41
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->currInstance:Landroid/os/Bundle;

    .line 47
    :cond_0
    new-instance v3, Lten/thirty/three/resistoridlite/ResistorView;

    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorId;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lten/thirty/three/resistoridlite/ResistorView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    .line 49
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    invoke-virtual {p0, v3}, Lten/thirty/three/resistoridlite/ResistorId;->setContentView(Landroid/view/View;)V

    .line 52
    const-string v3, "5band"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    .local v0, fband:Z
    const-string v3, "option_lock"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lten/thirty/three/resistoridlite/ResistorId;->OPT_LOCK:Z

    .line 55
    const-string v3, "option_dim"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lten/thirty/three/resistoridlite/ResistorId;->OPT_DIM:Z

    .line 56
    const-string v3, "option_saveres"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lten/thirty/three/resistoridlite/ResistorId;->OPT_SAVERES:Z

    .line 57
    sget-boolean v3, Lten/thirty/three/resistoridlite/ResistorId;->OPT_SAVERES:Z

    if-eqz v3, :cond_1

    .line 59
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iput-boolean v0, v3, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    .line 60
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v4, "band1"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    .line 61
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v4, "band2"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    .line 62
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v4, "band3"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    .line 63
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v4, "band4"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 64
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    const-string v4, "band5"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    .line 65
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    invoke-virtual {v3}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iput v5, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    .line 68
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iput v5, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    .line 69
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iput v5, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    .line 70
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iput v5, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 71
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    iput v5, v3, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    .line 72
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    invoke-virtual {v3}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 205
    .local v0, result:Z
    const/16 v1, 0x8

    const-string v2, "Upgrade"

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 206
    const v2, 0x7f02000f

    .line 205
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 207
    const/4 v1, 0x6

    const/4 v2, 0x1

    const-string v3, "Reverse Lookup"

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 208
    const v2, 0x7f02000e

    .line 207
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 210
    const/4 v1, 0x5

    const/4 v2, 0x2

    const-string v3, "About"

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 211
    const/4 v1, 0x7

    const/4 v2, 0x3

    const-string v3, "Options"

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 212
    const v2, 0x7f02000d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    const/4 v1, 0x4

    const-string v2, "Exit"

    invoke-interface {p1, v4, v4, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02000c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 215
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v4

    .line 164
    :goto_0
    return v1

    .line 103
    :pswitch_1
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorId;->rv:Lten/thirty/three/resistoridlite/ResistorView;

    invoke-virtual {v1}, Lten/thirty/three/resistoridlite/ResistorView;->SetResistorModeRetIfFiveBand()Z

    move v1, v3

    .line 104
    goto :goto_0

    .line 108
    :pswitch_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lten/thirty/three/resistoridlite/OptionsAct;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const/16 v2, 0x119

    .line 108
    invoke-virtual {p0, v1, v2}, Lten/thirty/three/resistoridlite/ResistorId;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v1, v3

    .line 113
    goto :goto_0

    .line 116
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 120
    const-string v2, "market://search?q=pname:ten.thirty.three.resistoridpro"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 116
    invoke-virtual {p0, v1}, Lten/thirty/three/resistoridlite/ResistorId;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 121
    goto :goto_0

    .line 124
    :pswitch_4
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 125
    const-class v2, Lten/thirty/three/resistoridlite/ReverseCalcAct;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x118

    .line 124
    invoke-virtual {p0, v1, v2}, Lten/thirty/three/resistoridlite/ResistorId;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v1, v3

    .line 129
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Intent: Reverse Lookup Failed"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_5
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorId;->finish()V

    move v1, v3

    .line 158
    goto :goto_0

    .line 161
    :pswitch_6
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorId;->ShowAboutDialog()V

    move v1, v3

    .line 162
    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    goto :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorId;->RestoreState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error saving restoring state"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 303
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorId;->SaveState()V

    .line 304
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 310
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorId;->SaveState()V

    .line 311
    return-void
.end method
