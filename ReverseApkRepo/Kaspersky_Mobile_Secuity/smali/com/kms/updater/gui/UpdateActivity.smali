.class public Lcom/kms/updater/gui/UpdateActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Landroid/widget/TextView;

.field private f:Landroid/os/Handler;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/TextView;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->d:Z

    .line 127
    new-instance v0, LgW;

    invoke-direct {v0, p0}, LgW;-><init>(Lcom/kms/updater/gui/UpdateActivity;)V

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->n:Z

    return-void
.end method

.method public static synthetic a(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 191
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    invoke-direct {p0}, Lcom/kms/updater/gui/UpdateActivity;->c()V

    .line 196
    if-eqz p1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/kms/updater/gui/UpdateActivity;->d()V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 204
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/updater/gui/UpdateActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->d:Z

    return v0
.end method

.method public static synthetic b(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/updater/gui/UpdateActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/kms/updater/gui/UpdateActivity;->a(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->e:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0800a2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 211
    return-void

    .line 208
    :cond_0
    const v0, 0x7f0800a6

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const v2, 0x7f0800b1

    .line 215
    invoke-static {}, Lcom/kavsdk/antivirus/BasesStorage;->a()Lcom/kavsdk/antivirus/BasesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/BasesStorage;->d()Lav;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lav;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lav;->a()J

    move-result-wide v2

    const/16 v4, 0x15

    invoke-static {p0, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lav;->d()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lav;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 176
    if-ne p1, v2, :cond_0

    .line 177
    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/kms/kmsshared/KMSApplication;->a(ZLfC;)I

    .line 180
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(Landroid/os/Handler;)Z

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->a(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 247
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->d:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 250
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->j()V

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->n:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 254
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Landroid/os/Handler;)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->n:Z

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->finish()V

    .line 259
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v0, 0x7f030054

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/updater/gui/UpdateActivity;->a(II)V

    .line 144
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->a:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f0b0138

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->b:Landroid/view/View;

    .line 148
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->c:Landroid/view/View;

    .line 149
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->e:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0b013a

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->g:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->k:Landroid/view/View;

    .line 152
    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->h:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0b013e

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->i:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0b013f

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->j:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0b0140

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->l:Landroid/widget/ProgressBar;

    .line 156
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Lcom/kms/updater/gui/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/updater/gui/UpdateActivity;->m:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 159
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 163
    invoke-direct {p0}, Lcom/kms/updater/gui/UpdateActivity;->c()V

    .line 165
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->n:Z

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 167
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(Landroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->n:Z

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->n:Z

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->finish()V

    .line 172
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->n:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/kms/updater/gui/UpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 236
    iget-object v1, p0, Lcom/kms/updater/gui/UpdateActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Landroid/os/Handler;)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/updater/gui/UpdateActivity;->n:Z

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onDestroy()V

    .line 240
    return-void
.end method
