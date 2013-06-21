.class Lcom/fleapapa/helper/Locales$2;
.super Ljava/lang/Object;
.source "Locales.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Locales;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Locales;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Locales;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Locales$2;->this$0:Lcom/fleapapa/helper/Locales;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 44
    iget-object v2, p0, Lcom/fleapapa/helper/Locales$2;->this$0:Lcom/fleapapa/helper/Locales;

    iget-object v2, v2, Lcom/fleapapa/helper/Locales;->adapter:Lcom/fleapapa/helper/Locales$LocaleAdapter;

    invoke-virtual {v2, p3}, Lcom/fleapapa/helper/Locales$LocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 45
    .local v1, lc:Ljava/util/Locale;
    invoke-static {v1}, Lcom/fleapapa/helper/Locales;->codeISO(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, key:Ljava/lang/String;
    sget-object v2, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    sget-object v2, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    const v2, 0x7f08010a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v2, p0, Lcom/fleapapa/helper/Locales$2;->this$0:Lcom/fleapapa/helper/Locales;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/fleapapa/helper/Locales;->dirty:Z

    .line 51
    return-void

    .line 48
    :cond_0
    sget-object v2, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    const/4 v3, 0x4

    goto :goto_1
.end method
