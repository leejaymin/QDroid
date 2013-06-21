.class Lcom/pgmsoft/wifinder/scan$16;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->AutoScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/scan;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/scan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "item"

    .prologue
    const-wide/16 v11, 0x7918

    const-wide/16 v9, 0x5208

    const-wide/16 v7, 0x2af8

    const-wide/16 v2, 0x1770

    const-wide/16 v4, 0x64

    .line 1178
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan$MyCount;->cancel()V

    .line 1180
    :cond_0
    if-nez p2, :cond_2

    .line 1181
    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v0, Lcom/pgmsoft/wifinder/scan$MyCount;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/scan$MyCount;-><init>(Lcom/pgmsoft/wifinder/scan;JJ)V

    iput-object v0, v6, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 1182
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    #setter for: Lcom/pgmsoft/wifinder/scan;->counter_base:J
    invoke-static {v0, v2, v3}, Lcom/pgmsoft/wifinder/scan;->access$40(Lcom/pgmsoft/wifinder/scan;J)V

    .line 1196
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan$MyCount;->start()Landroid/os/CountDownTimer;

    .line 1197
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v2, 0x7f040009

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->niceToast(Ljava/lang/String;)Ljava/lang/String;

    .line 1198
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1199
    return-void

    .line 1183
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 1184
    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v0, Lcom/pgmsoft/wifinder/scan$MyCount;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-wide v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/scan$MyCount;-><init>(Lcom/pgmsoft/wifinder/scan;JJ)V

    iput-object v0, v6, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 1185
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    #setter for: Lcom/pgmsoft/wifinder/scan;->counter_base:J
    invoke-static {v0, v7, v8}, Lcom/pgmsoft/wifinder/scan;->access$40(Lcom/pgmsoft/wifinder/scan;J)V

    goto :goto_0

    .line 1186
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 1187
    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v0, Lcom/pgmsoft/wifinder/scan$MyCount;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-wide v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/scan$MyCount;-><init>(Lcom/pgmsoft/wifinder/scan;JJ)V

    iput-object v0, v6, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 1188
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    #setter for: Lcom/pgmsoft/wifinder/scan;->counter_base:J
    invoke-static {v0, v9, v10}, Lcom/pgmsoft/wifinder/scan;->access$40(Lcom/pgmsoft/wifinder/scan;J)V

    goto :goto_0

    .line 1189
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 1190
    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v0, Lcom/pgmsoft/wifinder/scan$MyCount;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-wide v2, v11

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/scan$MyCount;-><init>(Lcom/pgmsoft/wifinder/scan;JJ)V

    iput-object v0, v6, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 1191
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    #setter for: Lcom/pgmsoft/wifinder/scan;->counter_base:J
    invoke-static {v0, v11, v12}, Lcom/pgmsoft/wifinder/scan;->access$40(Lcom/pgmsoft/wifinder/scan;J)V

    goto :goto_0

    .line 1192
    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1193
    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v0, Lcom/pgmsoft/wifinder/scan$MyCount;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    const-wide/32 v2, 0xee48

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/scan$MyCount;-><init>(Lcom/pgmsoft/wifinder/scan;JJ)V

    iput-object v0, v6, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 1194
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$16;->this$0:Lcom/pgmsoft/wifinder/scan;

    const-wide/32 v1, 0xee48

    #setter for: Lcom/pgmsoft/wifinder/scan;->counter_base:J
    invoke-static {v0, v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$40(Lcom/pgmsoft/wifinder/scan;J)V

    goto :goto_0
.end method
