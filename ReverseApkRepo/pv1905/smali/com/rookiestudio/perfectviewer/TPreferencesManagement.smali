.class public Lcom/rookiestudio/perfectviewer/TPreferencesManagement;
.super Landroid/app/Activity;
.source "TPreferencesManagement.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;,
        Lcom/rookiestudio/perfectviewer/TPreferencesManagement$XMLFileFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private MainListView:Landroid/widget/ListView;

.field private NeedRestart:Z

.field private PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

.field private SaveButton:Landroid/widget/Button;

.field private SavePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->NeedRestart:Z

    .line 44
    return-void
.end method

.method public static CreatePreferencesManagement(Landroid/app/Activity;)V
    .locals 2
    .parameter "Parent"

    .prologue
    .line 422
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v0, aPreferencesManagement:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    return-object v0
.end method


# virtual methods
.method public AskDelete(Ljava/lang/String;)V
    .locals 5
    .parameter "FileName"

    .prologue
    .line 275
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 277
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0127

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 280
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;

    invoke-direct {v3, p0, p1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$9;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$9;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 301
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 302
    return-void
.end method

.method public AskLoad(Ljava/lang/String;)V
    .locals 5
    .parameter "FileName"

    .prologue
    .line 231
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 233
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0129

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 236
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$4;

    invoke-direct {v3, p0, p1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$4;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$5;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$5;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 248
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 249
    return-void
.end method

.method public AskSave(Ljava/lang/String;)V
    .locals 5
    .parameter "FileName"

    .prologue
    .line 253
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 255
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 257
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 258
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$6;

    invoke-direct {v3, p0, p1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$6;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$7;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$7;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 270
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 271
    return-void
.end method

.method public LoadFrom(Ljava/lang/String;)V
    .locals 11
    .parameter "FileName"

    .prologue
    const/4 v10, 0x0

    .line 200
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->AppPerfFolder:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/temp.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, DestFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, SourceFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 203
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v3, v7, [B

    .line 205
    .local v3, buffer:[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 206
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 207
    .local v4, istream:Ljava/io/FileInputStream;
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 208
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 209
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 210
    .local v5, ostream:Ljava/io/FileOutputStream;
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 211
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 212
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    const v8, 0x7f0a0126

    invoke-virtual {p0, v8}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v3           #buffer:[B
    .end local v4           #istream:Ljava/io/FileInputStream;
    .end local v5           #ostream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    const-string v7, "temp"

    invoke-virtual {p0, v7, v10}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 217
    .local v1, Preferences:Landroid/content/SharedPreferences;
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v7, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->LoadSetting(Landroid/content/SharedPreferences;)V

    .line 218
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->LoadSetting2(Landroid/content/SharedPreferences;)V

    .line 219
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->LoadQuickBarButtons(Landroid/content/SharedPreferences;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 221
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->List()V

    .line 222
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->notifyDataSetChanged()V

    .line 223
    const-string v7, "perfect_viewer_settings"

    invoke-virtual {p0, v7, v10}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 224
    .local v6, settings:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Landroid/content/SharedPreferences;)V

    .line 225
    invoke-static {v6}, Lcom/rookiestudio/perfectviewer/Config;->SaveQuickBarButtons(Landroid/content/SharedPreferences;)V

    .line 226
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->NeedRestart:Z

    .line 227
    return-void

    .line 213
    .end local v1           #Preferences:Landroid/content/SharedPreferences;
    .end local v6           #settings:Landroid/content/SharedPreferences;
    .restart local v3       #buffer:[B
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public SavePrefrencesAs()V
    .locals 4

    .prologue
    .line 102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0122

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const v2, 0x7f0a0121

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 106
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, input:Landroid/widget/EditText;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 109
    const v2, 0x104000a

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$1;

    invoke-direct {v3, p0, v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$1;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    const/high16 v2, 0x104

    new-instance v3, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$2;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$2;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 126
    return-void
.end method

.method public SaveTo(Ljava/lang/String;)V
    .locals 9
    .parameter "FileName"

    .prologue
    const/4 v7, 0x0

    .line 173
    const-string v6, "temp"

    invoke-virtual {p0, v6, v7}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 174
    .local v1, Preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting2(Landroid/content/SharedPreferences;)V

    .line 175
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveQuickBarButtons(Landroid/content/SharedPreferences;)V

    .line 176
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v6, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->SaveSetting(Landroid/content/SharedPreferences;)V

    .line 177
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppPerfFolder:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/temp.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, TempFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, DestFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v3, v6, [B

    .line 182
    .local v3, buffer:[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 183
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 184
    .local v4, istream:Ljava/io/FileInputStream;
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 185
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 186
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v5, ostream:Ljava/io/FileOutputStream;
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 189
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    const v7, 0x7f0a0124

    invoke-virtual {p0, v7}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v3           #buffer:[B
    .end local v4           #istream:Ljava/io/FileInputStream;
    .end local v5           #ostream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 194
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v6}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->List()V

    .line 195
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v6}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->notifyDataSetChanged()V

    .line 196
    return-void

    .line 190
    .restart local v3       #buffer:[B
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c002d

    if-ne v0, v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePrefrencesAs()V

    .line 309
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/PerfectViewer/Preferences/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePath:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, SavePathFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePath:Ljava/lang/String;

    .line 63
    :cond_0
    const v1, 0x7f030025

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->setContentView(I)V

    .line 64
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v1}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    .line 65
    const v1, 0x7f0c002d

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SaveButton:Landroid/widget/Button;

    .line 66
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SaveButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f0c0022

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->MainListView:Landroid/widget/ListView;

    .line 68
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 70
    new-instance v1, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-direct {v1, p0, p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    .line 71
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->List()V

    .line 72
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->MainListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getCount2()I

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v0, p3}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    iget-object v0, v0, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->AskLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getCount2()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->onPopupMenu(Landroid/view/View;I)V

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->NeedRestart:Z

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->NeedRestart:Z

    .line 80
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->DoRestart(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public onPopupMenu(Landroid/view/View;I)V
    .locals 11
    .parameter "arg1"
    .parameter "ItemIndex"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 129
    new-array v2, v10, [Ljava/lang/CharSequence;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x7f0a0120

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    const/4 v6, 0x1

    .line 130
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a011f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    .line 131
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a008f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x3

    .line 132
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0090

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 133
    .local v2, MenuItemList:[Ljava/lang/CharSequence;
    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 137
    .local v1, MenuImageList:[I
    new-instance v4, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;

    const v6, 0x7f03001b

    invoke-direct {v4, p0, v6, v2, v1}, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[I)V

    .line 138
    .local v4, PopupMenu:Lcom/rookiestudio/customize/PopupMenuArrayAdapter;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v5, alert:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    invoke-virtual {v6, p2}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v6

    iget-object v6, v6, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 140
    const v6, 0x108009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 141
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v3, MenuListView:Landroid/widget/ListView;
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 143
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 144
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x1080012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 148
    .local v0, MenuDialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;

    invoke-direct {v6, p0, v0, p2}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;-><init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 169
    return-void

    .line 133
    :array_0
    .array-data 0x4
        0xa0t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
    .end array-data
.end method
