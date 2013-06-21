.class Ledu/umich/PowerTutor/widget/Configure$1;
.super Ljava/lang/Object;
.source "Configure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/widget/Configure;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/widget/Configure;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/widget/Configure;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 73
    const-string v7, ""

    .line 75
    .local v7, val:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v0, ba:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v4, objout:Ljava/io/ObjectOutputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    #getter for: Ledu/umich/PowerTutor/widget/Configure;->dataSource:[Ledu/umich/PowerTutor/widget/DataSource;
    invoke-static {v8}, Ledu/umich/PowerTutor/widget/Configure;->access$0(Ledu/umich/PowerTutor/widget/Configure;)[Ledu/umich/PowerTutor/widget/DataSource;

    move-result-object v8

    array-length v8, v8

    if-lt v2, v8, :cond_0

    .line 80
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 81
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ledu/umich/PowerTutor/util/HexEncode;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 86
    .end local v0           #ba:Ljava/io/ByteArrayOutputStream;
    .end local v2           #i:I
    .end local v4           #objout:Ljava/io/ObjectOutputStream;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "widget_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    #getter for: Ledu/umich/PowerTutor/widget/Configure;->widgetId:I
    invoke-static {v9}, Ledu/umich/PowerTutor/widget/Configure;->access$1(Ledu/umich/PowerTutor/widget/Configure;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, key:Ljava/lang/String;
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 90
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v6, resultValue:Landroid/content/Intent;
    const-string v8, "appWidgetId"

    iget-object v9, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    #getter for: Ledu/umich/PowerTutor/widget/Configure;->widgetId:I
    invoke-static {v9}, Ledu/umich/PowerTutor/widget/Configure;->access$1(Ledu/umich/PowerTutor/widget/Configure;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v6}, Ledu/umich/PowerTutor/widget/Configure;->setResult(ILandroid/content/Intent;)V

    .line 95
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    invoke-virtual {v8}, Ledu/umich/PowerTutor/widget/Configure;->finish()V

    .line 96
    return-void

    .line 78
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    .end local v6           #resultValue:Landroid/content/Intent;
    .restart local v0       #ba:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #i:I
    .restart local v4       #objout:Ljava/io/ObjectOutputStream;
    :cond_0
    :try_start_1
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    #getter for: Ledu/umich/PowerTutor/widget/Configure;->dataSource:[Ledu/umich/PowerTutor/widget/DataSource;
    invoke-static {v8}, Ledu/umich/PowerTutor/widget/Configure;->access$0(Ledu/umich/PowerTutor/widget/Configure;)[Ledu/umich/PowerTutor/widget/DataSource;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v4, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0           #ba:Ljava/io/ByteArrayOutputStream;
    .end local v2           #i:I
    .end local v4           #objout:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Configure"

    const-string v9, "Failed to write data sources to string"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/Configure$1;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    invoke-virtual {v8}, Ledu/umich/PowerTutor/widget/Configure;->finish()V

    goto :goto_1
.end method
