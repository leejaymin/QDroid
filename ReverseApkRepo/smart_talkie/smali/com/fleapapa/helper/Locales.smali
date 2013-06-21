.class public Lcom/fleapapa/helper/Locales;
.super Landroid/app/ListActivity;
.source "Locales.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/Locales$LocaleAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/fleapapa/helper/Locales$LocaleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/Locales$LocaleAdapter",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field dirty:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method public static codeISO(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "lc"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static locales(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iso"
    .parameter "delm"

    .prologue
    .line 60
    const-string v1, ""

    .line 61
    .local v1, s:Ljava/lang/String;
    sget-object v2, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    return-object v1

    .line 61
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 62
    .local v0, lc:Ljava/util/Locale;
    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/fleapapa/helper/Locales;->codeISO(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v1, p1, v3}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/fleapapa/helper/Locales;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 30
    .local v2, lview:Landroid/widget/ListView;
    new-instance v3, Lcom/fleapapa/helper/Locales$LocaleAdapter;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/Locales$LocaleAdapter;-><init>(Lcom/fleapapa/helper/Locales;)V

    iput-object v3, p0, Lcom/fleapapa/helper/Locales;->adapter:Lcom/fleapapa/helper/Locales$LocaleAdapter;

    .line 31
    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/Locales;->setContentView(Landroid/view/View;)V

    .line 32
    iget-object v3, p0, Lcom/fleapapa/helper/Locales;->adapter:Lcom/fleapapa/helper/Locales$LocaleAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    const v3, 0x7f02006f

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 34
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 35
    .local v1, locales:[Ljava/util/Locale;
    new-instance v3, Lcom/fleapapa/helper/Locales$1;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/Locales$1;-><init>(Lcom/fleapapa/helper/Locales;)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 40
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 42
    new-instance v3, Lcom/fleapapa/helper/Locales$2;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/Locales$2;-><init>(Lcom/fleapapa/helper/Locales;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    return-void

    .line 40
    :cond_0
    aget-object v0, v1, v4

    .line 41
    .local v0, lc:Ljava/util/Locale;
    iget-object v5, p0, Lcom/fleapapa/helper/Locales;->adapter:Lcom/fleapapa/helper/Locales$LocaleAdapter;

    invoke-virtual {v5, v0}, Lcom/fleapapa/helper/Locales$LocaleAdapter;->add(Ljava/lang/Object;)V

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    iget-boolean v0, p0, Lcom/fleapapa/helper/Locales;->dirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "locales"

    aput-object v2, v0, v1

    const-string v1, "|"

    invoke-static {v3, v1}, Lcom/fleapapa/helper/Locales;->locales(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 58
    return-void
.end method
