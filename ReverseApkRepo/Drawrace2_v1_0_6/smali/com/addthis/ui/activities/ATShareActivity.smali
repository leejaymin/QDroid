.class public Lcom/addthis/ui/activities/ATShareActivity;
.super Landroid/app/Activity;
.source "ATShareActivity.java"

# interfaces
.implements Lcom/addthis/ui/views/ATActionBarListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Share activity"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mDescEditText:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSharer:Lcom/addthis/core/sharer/ATSharer;

.field private mTitleEditText:Landroid/widget/EditText;

.field private mUrlEditText:Landroid/widget/EditText;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    .line 47
    return-void
.end method

.method private combineTitleAndDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 244
    .local v2, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v1

    .line 245
    .local v1, item:Lcom/addthis/models/ATShareItem;
    invoke-virtual {v1}, Lcom/addthis/models/ATShareItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, combinedString:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/addthis/models/ATShareItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 247
    invoke-virtual {v1}, Lcom/addthis/models/ATShareItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/addthis/models/ATShareItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/addthis/models/ATShareItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :cond_1
    invoke-virtual {v1}, Lcom/addthis/models/ATShareItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private shareViewForFacebook()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 188
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 189
    .local v1, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATActivityGroup;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v0

    .line 191
    .local v0, item:Lcom/addthis/models/ATShareItem;
    const-string v2, "id"

    const-string v3, "titleEditText"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 190
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/addthis/ui/activities/ATShareActivity;->mTitleEditText:Landroid/widget/EditText;

    .line 192
    iget-object v2, p0, Lcom/addthis/ui/activities/ATShareActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/addthis/ui/activities/ATShareActivity;->combineTitleAndDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const-string v2, "id"

    const-string v3, "titleTextView"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 193
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    const-string v3, "Message"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const-string v2, "id"

    const-string v3, "descEditText"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 195
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 196
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    const-string v2, "id"

    const-string v3, "descTextView"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 197
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-virtual {v0}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const-string v2, "id"

    const-string v3, "imageAttachedText"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 200
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 201
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_0
    return-void
.end method

.method private shareViewForTumblr()V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 172
    .local v1, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATActivityGroup;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v0

    .line 174
    .local v0, item:Lcom/addthis/models/ATShareItem;
    const-string v2, "id"

    const-string v3, "titleEditText"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 173
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/addthis/ui/activities/ATShareActivity;->mTitleEditText:Landroid/widget/EditText;

    .line 175
    iget-object v2, p0, Lcom/addthis/ui/activities/ATShareActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/addthis/ui/activities/ATShareActivity;->combineTitleAndDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const-string v2, "id"

    const-string v3, "titleTextView"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 176
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    const-string v3, "Caption"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const-string v2, "id"

    const-string v3, "descEditText"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 178
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/addthis/ui/activities/ATShareActivity;->mDescEditText:Landroid/widget/EditText;

    .line 181
    const-string v2, "id"

    const-string v3, "descTextView"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 180
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    const-string v3, "Tags"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v0}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    const-string v2, "id"

    const-string v3, "imageAttachedText"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 183
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 184
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_0
    return-void
.end method

.method private shareViewForTwitter()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 205
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 206
    .local v1, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATActivityGroup;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v0

    .line 208
    .local v0, item:Lcom/addthis/models/ATShareItem;
    const-string v4, "id"

    const-string v5, "titleEditText"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 207
    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mTitleEditText:Landroid/widget/EditText;

    .line 209
    const-string v3, ""

    .line 210
    .local v3, via:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATActivityGroup;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/addthis/models/ATShareItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATActivityGroup;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/addthis/models/ATShareItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    :cond_0
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/addthis/core/Config;->getTwitterViaText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " via @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v5

    invoke-virtual {v5}, Lcom/addthis/core/Config;->getTwitterViaText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATShareActivity;->combineTitleAndDescription()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, theMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mTitleEditText:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const-string v4, "id"

    const-string v5, "titleTextView"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 219
    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 220
    const-string v5, "Message"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const-string v4, "id"

    const-string v5, "descEditText"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 221
    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 222
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 224
    const-string v4, "id"

    const-string v5, "descTextView"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 223
    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 224
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {v0}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    const-string v4, "id"

    const-string v5, "imageAttachedText"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 227
    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 228
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_2
    return-void
.end method

.method private startSharing()V
    .locals 5

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 108
    .local v2, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->getService()Lcom/addthis/models/ATService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 109
    const-string v3, "Share activity"

    const-string v4, "No service code"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->finish()V

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    if-eqz v3, :cond_0

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v3}, Lcom/addthis/core/sharer/ATSharer;->share()V
    :try_end_0
    .catch Lcom/addthis/error/ATSharerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    return-void

    .line 113
    :cond_1
    const-string v3, "id"

    const-string v4, "actionbar"

    invoke-static {p0, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 112
    invoke-virtual {p0, v3}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/views/ATActionBar;

    .line 114
    .local v0, bar:Lcom/addthis/ui/views/ATActionBar;
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->getService()Lcom/addthis/models/ATService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/addthis/models/ATService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/addthis/ui/views/ATActionBar;->setActionBarTitle(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->getService()Lcom/addthis/models/ATService;

    move-result-object v3

    .line 116
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v4

    .line 115
    invoke-static {v3, v4, p0}, Lcom/addthis/core/sharer/ATSharerFactory;->getSharer(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)Lcom/addthis/core/sharer/ATSharer;

    move-result-object v3

    iput-object v3, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    goto :goto_0

    .line 122
    .end local v0           #bar:Lcom/addthis/ui/views/ATActionBar;
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Lcom/addthis/error/ATSharerException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/addthis/error/ATSharerException;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public actionItemClicked(Lcom/addthis/ui/views/ATActionBar;I)V
    .locals 6
    .parameter "bar"
    .parameter "index"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 353
    .local v1, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    if-nez p2, :cond_1

    .line 354
    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATActivityGroup;->exit()V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_3

    .line 359
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v4}, Lcom/addthis/core/sharer/ATSharer;->isOExchange()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    check-cast v4, Lcom/addthis/core/sharer/ATOExchangeSharer;

    invoke-virtual {v4}, Lcom/addthis/core/sharer/ATOExchangeSharer;->oExchangeShareUrl()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 362
    .local v2, uriUrl:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    .local v0, launchBrowser:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/addthis/ui/activities/ATShareActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 365
    .end local v0           #launchBrowser:Landroid/content/Intent;
    .end local v2           #uriUrl:Landroid/net/Uri;
    .end local v3           #url:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v4}, Lcom/addthis/core/sharer/ATSharer;->logoutSharer()V

    goto :goto_0

    .line 368
    :cond_3
    const-string v4, "id"

    const-string v5, "textLabel"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 369
    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V

    goto :goto_0
.end method

.method public cancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->dismiss()V

    .line 326
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 315
    .local v0, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->getCurrentViewIndex()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V

    .line 317
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 378
    .local v0, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V

    .line 379
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iput-object p1, p0, Lcom/addthis/ui/activities/ATShareActivity;->mBundle:Landroid/os/Bundle;

    .line 63
    const-string v1, "layout"

    const-string v2, "atshareactivity"

    invoke-static {p0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 62
    invoke-virtual {p0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->setContentView(I)V

    .line 67
    const-string v1, "id"

    const-string v2, "actionbar"

    invoke-static {p0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 66
    invoke-virtual {p0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/views/ATActionBar;

    .line 68
    .local v0, bar:Lcom/addthis/ui/views/ATActionBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/addthis/ui/views/ATActionBar;->setupActionItems(I)V

    .line 69
    invoke-virtual {v0, p0}, Lcom/addthis/ui/views/ATActionBar;->setActionBarOnClickListener(Lcom/addthis/ui/views/ATActionBarListener;)V

    .line 70
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATShareActivity;->startSharing()V

    .line 72
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 79
    :cond_0
    return-void
.end method

.method public shareClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v0, values:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/addthis/ui/activities/ATShareActivity;->mTitleEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "sharetitle"

    iget-object v2, p0, Lcom/addthis/ui/activities/ATShareActivity;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 337
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/addthis/ui/activities/ATShareActivity;->mDescEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 340
    const-string v1, "sharedesc"

    iget-object v2, p0, Lcom/addthis/ui/activities/ATShareActivity;->mDescEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 341
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/addthis/ui/activities/ATShareActivity;->mUrlEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 344
    const-string v1, "shareurl"

    iget-object v2, p0, Lcom/addthis/ui/activities/ATShareActivity;->mUrlEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 345
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v1, v0}, Lcom/addthis/core/sharer/ATSharer;->shareMessage(Landroid/os/Bundle;)V

    .line 348
    return-void
.end method

.method public showOExchangeWebView(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    .line 266
    const-string v4, "Share activity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Going to display webview"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 269
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v4, "layout"

    const-string v5, "atoexchangewebview"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 268
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 272
    .local v3, view:Landroid/view/View;
    const-string v4, "id"

    const-string v5, "actionbar"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 271
    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/views/ATActionBar;

    .line 273
    .local v0, bar:Lcom/addthis/ui/views/ATActionBar;
    invoke-virtual {v0, p0}, Lcom/addthis/ui/views/ATActionBar;->setWebShareBtn(Landroid/content/Context;)V

    .line 276
    const-string v4, "id"

    const-string v5, "placeholderView"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 275
    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 277
    .local v2, placeholder:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    const-string v4, "id"

    const-string v5, "webview"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 278
    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    .line 280
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 281
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 282
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/addthis/ui/activities/ATShareActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 283
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->reload()V

    .line 289
    :goto_0
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 290
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/addthis/ui/activities/ATShareActivity$1;

    invoke-direct {v5, p0}, Lcom/addthis/ui/activities/ATShareActivity$1;-><init>(Lcom/addthis/ui/activities/ATShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    return-void

    .line 286
    :cond_0
    iget-object v4, p0, Lcom/addthis/ui/activities/ATShareActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showProgressDialog(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->stopProgressDialog()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addthis/ui/activities/ATShareActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 88
    const-string v0, "Share activity"

    const-string v1, "Progress show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATShareActivity;->stopProgressDialog()V

    .line 91
    const-string v0, ""

    invoke-static {p0, v0, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/addthis/ui/activities/ATShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 92
    iget-object v0, p0, Lcom/addthis/ui/activities/ATShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 93
    return-void
.end method

.method public showShareView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x5

    .line 136
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/addthis/ui/activities/ATShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 138
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v5, "layout"

    const-string v6, "atshareview"

    invoke-static {p0, v5, v6}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 137
    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 139
    .local v4, view:Landroid/view/View;
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v3, scrollView:Landroid/widget/ScrollView;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 142
    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const-string v5, "id"

    const-string v6, "placeholderView"

    invoke-static {p0, v5, v6}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 143
    invoke-virtual {p0, v5}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 145
    .local v2, placeholder:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    const-string v5, "id"

    const-string v6, "actionbar"

    invoke-static {p0, v5, v6}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 149
    invoke-virtual {p0, v5}, Lcom/addthis/ui/activities/ATShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/views/ATActionBar;

    .line 151
    .local v0, bar:Lcom/addthis/ui/views/ATActionBar;
    invoke-virtual {v0, p0}, Lcom/addthis/ui/views/ATActionBar;->setLogoutBtn(Landroid/content/Context;)V

    .line 153
    iget-object v5, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v5}, Lcom/addthis/core/sharer/ATSharer;->service()Lcom/addthis/models/ATService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "twitter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATShareActivity;->shareViewForTwitter()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v5, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v5}, Lcom/addthis/core/sharer/ATSharer;->service()Lcom/addthis/models/ATService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATShareActivity;->shareViewForFacebook()V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v5, p0, Lcom/addthis/ui/activities/ATShareActivity;->mSharer:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v5}, Lcom/addthis/core/sharer/ATSharer;->service()Lcom/addthis/models/ATService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tumblr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATShareActivity;->shareViewForTumblr()V

    goto :goto_0
.end method

.method public stopProgressDialog()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/addthis/ui/activities/ATShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/addthis/ui/activities/ATShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/ui/activities/ATShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 100
    :cond_0
    return-void
.end method
