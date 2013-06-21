.class Lcom/trafficStats/test/TrafficStatsTest$3;
.super Ljava/lang/Object;
.source "TrafficStatsTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trafficStats/test/TrafficStatsTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trafficStats/test/TrafficStatsTest;

.field private final synthetic val$textMobileRxBytes:Landroid/widget/TextView;

.field private final synthetic val$textMobileRxPackets:Landroid/widget/TextView;

.field private final synthetic val$textMobileTxBytes:Landroid/widget/TextView;

.field private final synthetic val$textMobileTxPackets:Landroid/widget/TextView;

.field private final synthetic val$textTotalRxBytes:Landroid/widget/TextView;

.field private final synthetic val$textTotalRxPackets:Landroid/widget/TextView;

.field private final synthetic val$textTotalTxBytes:Landroid/widget/TextView;

.field private final synthetic val$textTotalTxPackets:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/trafficStats/test/TrafficStatsTest;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iput-object p2, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileRxBytes:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileRxPackets:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileTxBytes:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileTxPackets:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalRxBytes:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalRxPackets:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalTxBytes:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalTxPackets:Landroid/widget/TextView;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    .line 100
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v7, v7, Lcom/trafficStats/test/TrafficStatsTest;->mUidText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 106
    .local v5, mUid:I
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 107
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileRxBytes:Landroid/widget/TextView;

    const-string v8, "MobileRxBytes: UNSUPPORTED!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 120
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileRxPackets:Landroid/widget/TextView;

    const-string v8, "MobileRxPackets: UNSUPPORTED!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_1
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 135
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileTxBytes:Landroid/widget/TextView;

    const-string v8, "MobileTxBytes: UNSUPPORTED!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_2
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 142
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileTxPackets:Landroid/widget/TextView;

    const-string v8, "MobileTxPackets: UNSUPPORTED!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_3
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 151
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalRxBytes:Landroid/widget/TextView;

    const-string v8, "TotalRxBytes: UNSUPPORTED!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_4
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 157
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalRxPackets:Landroid/widget/TextView;

    const-string v8, "TotalRxPackets: UNSUPPORTED!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_5
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    .line 164
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalTxBytes:Landroid/widget/TextView;

    const-string v8, "TotalTxBytes: UNSUPPORTED!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_6
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxPackets()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 170
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalTxPackets:Landroid/widget/TextView;

    const-string v8, "TotalTxPackets: UNSUPPORTED!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_7
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v7, v7, Lcom/trafficStats/test/TrafficStatsTest;->mUidText:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-ne v7, v8, :cond_8

    .line 178
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v7, v7, Lcom/trafficStats/test/TrafficStatsTest;->mPackageName:Landroid/widget/TextView;

    const-string v8, "Please Uid number"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_8
    return-void

    .line 110
    :cond_0
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileRxBytes:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MobileRxBytes: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 110
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 123
    :cond_1
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileRxPackets:Landroid/widget/TextView;

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MobileRxPackets: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v9

    .line 125
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 138
    :cond_2
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileTxBytes:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MobileTxBytes: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 145
    :cond_3
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textMobileTxPackets:Landroid/widget/TextView;

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MobileTxPackets: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v9

    .line 147
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 146
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 153
    :cond_4
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalRxBytes:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TotalRxBytes: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 160
    :cond_5
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalRxPackets:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TotalRxPackets: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 166
    :cond_6
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalTxBytes:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TotalTxBytes: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 173
    :cond_7
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->val$textTotalTxPackets:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TotalTxPackets: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxPackets()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 173
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 181
    :cond_8
    invoke-static {}, Lcom/trafficStats/test/TrafficStatsTest;->access$0()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, processName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 183
    .local v0, RxTraffic:J
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 185
    .local v2, TxTraffic:J
    if-nez v6, :cond_9

    .line 188
    :try_start_0
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    invoke-static {}, Lcom/trafficStats/test/TrafficStatsTest;->access$0()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iput-object v8, v7, Lcom/trafficStats/test/TrafficStatsTest;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_9
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v7, v7, Lcom/trafficStats/test/TrafficStatsTest;->mPackageName:Landroid/widget/TextView;

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v11, v11, Lcom/trafficStats/test/TrafficStatsTest;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_a
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v7, v7, Lcom/trafficStats/test/TrafficStatsTest;->mRxText:Landroid/widget/TextView;

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v7, v7, Lcom/trafficStats/test/TrafficStatsTest;->mTxText:Landroid/widget/TextView;

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 189
    :catch_0
    move-exception v4

    .line 191
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_9

    .line 196
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    iget-object v7, p0, Lcom/trafficStats/test/TrafficStatsTest$3;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v7, v7, Lcom/trafficStats/test/TrafficStatsTest;->mPackageName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method
