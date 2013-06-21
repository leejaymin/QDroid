.class public Lcom/soundboard/itcrowd/It_Crowd_Sounds;
.super Landroid/app/TabActivity;
.source "It_Crowd_Sounds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a1:Landroid/media/MediaPlayer;

.field private b1:Landroid/media/MediaPlayer;

.field private c1:Landroid/media/MediaPlayer;

.field private d1:Landroid/media/MediaPlayer;

.field private e1:Landroid/media/MediaPlayer;

.field private example_adview1:Lcom/admob/android/ads/AdView;

.field private example_adview2:Lcom/admob/android/ads/AdView;

.field private example_adview3:Lcom/admob/android/ads/AdView;

.field private f1:Landroid/media/MediaPlayer;

.field private g1:Landroid/media/MediaPlayer;

.field private h1:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(ILjava/lang/String;)V
    .locals 9
    .parameter "fileID"
    .parameter "toFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1689
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1690
    .local v6, toFile:Ljava/io/File;
    move v2, p1

    .line 1735
    .local v2, fileid:I
    invoke-virtual {p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1736
    .local v3, from:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1739
    .local v4, to:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1740
    .end local v4           #to:Ljava/io/FileOutputStream;
    .local v5, to:Ljava/io/FileOutputStream;
    const/16 v7, 0x1000

    :try_start_1
    new-array v0, v7, [B

    .line 1743
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, bytesRead:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 1746
    if-eqz v3, :cond_0

    .line 1748
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1752
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 1754
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1759
    :cond_1
    :goto_2
    return-void

    .line 1744
    :cond_2
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1745
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .line 1746
    .end local v5           #to:Ljava/io/FileOutputStream;
    .restart local v4       #to:Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v3, :cond_3

    .line 1748
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1752
    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 1754
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1758
    :cond_4
    :goto_5
    throw v7

    .line 1749
    :catch_0
    move-exception v8

    goto :goto_4

    .line 1755
    :catch_1
    move-exception v8

    goto :goto_5

    .line 1749
    .end local v4           #to:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v5       #to:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    goto :goto_1

    .line 1755
    :catch_3
    move-exception v7

    goto :goto_2

    .line 1745
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v5           #to:Ljava/io/FileOutputStream;
    .restart local v4       #to:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1540
    const/4 v0, 0x0

    .line 1541
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1640
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1641
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1644
    new-instance v1, Lcom/soundboard/itcrowd/It_Crowd_Sounds$49;

    .line 1643
    invoke-direct {v1, p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$49;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1652
    return-void

    .line 1544
    :pswitch_1
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->a1:Landroid/media/MediaPlayer;

    .line 1545
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->a1:Landroid/media/MediaPlayer;

    .line 1546
    goto :goto_0

    .line 1548
    :pswitch_2
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->b1:Landroid/media/MediaPlayer;

    .line 1549
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->b1:Landroid/media/MediaPlayer;

    .line 1550
    goto :goto_0

    .line 1552
    :pswitch_3
    const v1, 0x7f040006

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->c1:Landroid/media/MediaPlayer;

    .line 1553
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->c1:Landroid/media/MediaPlayer;

    .line 1554
    goto :goto_0

    .line 1556
    :pswitch_4
    const v1, 0x7f040009

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->d1:Landroid/media/MediaPlayer;

    .line 1557
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->d1:Landroid/media/MediaPlayer;

    .line 1558
    goto :goto_0

    .line 1560
    :pswitch_5
    const v1, 0x7f04000c

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->e1:Landroid/media/MediaPlayer;

    .line 1561
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->e1:Landroid/media/MediaPlayer;

    .line 1562
    goto :goto_0

    .line 1564
    :pswitch_6
    const v1, 0x7f04000f

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->f1:Landroid/media/MediaPlayer;

    .line 1565
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->f1:Landroid/media/MediaPlayer;

    .line 1566
    goto :goto_0

    .line 1568
    :pswitch_7
    const v1, 0x7f040012

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->g1:Landroid/media/MediaPlayer;

    .line 1569
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->g1:Landroid/media/MediaPlayer;

    .line 1570
    goto :goto_0

    .line 1572
    :pswitch_8
    const v1, 0x7f040015

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->h1:Landroid/media/MediaPlayer;

    .line 1573
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->h1:Landroid/media/MediaPlayer;

    .line 1574
    goto :goto_0

    .line 1576
    :pswitch_9
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->a1:Landroid/media/MediaPlayer;

    .line 1577
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->a1:Landroid/media/MediaPlayer;

    .line 1578
    goto :goto_0

    .line 1580
    :pswitch_a
    const v1, 0x7f040004

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->b1:Landroid/media/MediaPlayer;

    .line 1581
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->b1:Landroid/media/MediaPlayer;

    .line 1582
    goto/16 :goto_0

    .line 1584
    :pswitch_b
    const v1, 0x7f040007

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->c1:Landroid/media/MediaPlayer;

    .line 1585
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->c1:Landroid/media/MediaPlayer;

    .line 1586
    goto/16 :goto_0

    .line 1588
    :pswitch_c
    const v1, 0x7f04000a

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->d1:Landroid/media/MediaPlayer;

    .line 1589
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->d1:Landroid/media/MediaPlayer;

    .line 1590
    goto/16 :goto_0

    .line 1592
    :pswitch_d
    const v1, 0x7f04000d

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->e1:Landroid/media/MediaPlayer;

    .line 1593
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->e1:Landroid/media/MediaPlayer;

    .line 1594
    goto/16 :goto_0

    .line 1596
    :pswitch_e
    const v1, 0x7f040010

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->f1:Landroid/media/MediaPlayer;

    .line 1597
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->f1:Landroid/media/MediaPlayer;

    .line 1598
    goto/16 :goto_0

    .line 1600
    :pswitch_f
    const v1, 0x7f040013

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->g1:Landroid/media/MediaPlayer;

    .line 1601
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->g1:Landroid/media/MediaPlayer;

    .line 1602
    goto/16 :goto_0

    .line 1604
    :pswitch_10
    const v1, 0x7f040016

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->h1:Landroid/media/MediaPlayer;

    .line 1605
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->h1:Landroid/media/MediaPlayer;

    .line 1606
    goto/16 :goto_0

    .line 1608
    :pswitch_11
    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->a1:Landroid/media/MediaPlayer;

    .line 1609
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->a1:Landroid/media/MediaPlayer;

    .line 1610
    goto/16 :goto_0

    .line 1612
    :pswitch_12
    const v1, 0x7f040005

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->b1:Landroid/media/MediaPlayer;

    .line 1613
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->b1:Landroid/media/MediaPlayer;

    .line 1614
    goto/16 :goto_0

    .line 1616
    :pswitch_13
    const v1, 0x7f040008

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->c1:Landroid/media/MediaPlayer;

    .line 1617
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->c1:Landroid/media/MediaPlayer;

    .line 1618
    goto/16 :goto_0

    .line 1620
    :pswitch_14
    const v1, 0x7f04000b

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->d1:Landroid/media/MediaPlayer;

    .line 1621
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->d1:Landroid/media/MediaPlayer;

    .line 1622
    goto/16 :goto_0

    .line 1624
    :pswitch_15
    const v1, 0x7f04000e

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->e1:Landroid/media/MediaPlayer;

    .line 1625
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->e1:Landroid/media/MediaPlayer;

    .line 1626
    goto/16 :goto_0

    .line 1628
    :pswitch_16
    const v1, 0x7f040011

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->f1:Landroid/media/MediaPlayer;

    .line 1629
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->f1:Landroid/media/MediaPlayer;

    .line 1630
    goto/16 :goto_0

    .line 1632
    :pswitch_17
    const v1, 0x7f040014

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->g1:Landroid/media/MediaPlayer;

    .line 1633
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->g1:Landroid/media/MediaPlayer;

    .line 1634
    goto/16 :goto_0

    .line 1636
    :pswitch_18
    const v1, 0x7f040017

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->h1:Landroid/media/MediaPlayer;

    .line 1637
    iget-object v0, p0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->h1:Landroid/media/MediaPlayer;

    goto/16 :goto_0

    .line 1541
    :pswitch_data_0
    .packed-switch 0x7f080002
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super/range {p0 .. p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/high16 v27, 0x7f03

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->setContentView(I)V

    .line 46
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 55
    const/high16 v27, 0x7f03

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->setContentView(I)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getTabHost()Landroid/widget/TabHost;

    move-result-object v26

    .line 59
    .local v26, mTabHost:Landroid/widget/TabHost;
    const-string v27, "tab_test1"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {p0 .. p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020004

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    const/high16 v28, 0x7f08

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 65
    const v27, 0x7f080002

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, button0:Landroid/view/View;
    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    const v27, 0x7f080003

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, button1:Landroid/view/View;
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    const v27, 0x7f080004

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 72
    .local v13, button2:Landroid/view/View;
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    const v27, 0x7f080005

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 75
    .local v20, button3:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    const v27, 0x7f080006

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 78
    .local v21, button4:Landroid/view/View;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 80
    const v27, 0x7f080007

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 81
    .local v22, button5:Landroid/view/View;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    const v27, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 84
    .local v23, button6:Landroid/view/View;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 86
    const v27, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 87
    .local v24, button7:Landroid/view/View;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    const v27, 0x7f080001

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/admob/android/ads/AdView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->example_adview1:Lcom/admob/android/ads/AdView;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->example_adview1:Lcom/admob/android/ads/AdView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 93
    const-string v27, "tab_test2"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {p0 .. p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020005

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    const v28, 0x7f08000b

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 94
    const v27, 0x7f08000d

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 95
    .local v25, button9:Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    const v27, 0x7f08000e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 98
    .local v4, button10:Landroid/view/View;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    const v27, 0x7f08000f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 101
    .local v5, button11:Landroid/view/View;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    const v27, 0x7f080010

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 104
    .local v6, button12:Landroid/view/View;
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    const v27, 0x7f080011

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 107
    .local v7, button13:Landroid/view/View;
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    const v27, 0x7f080012

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 110
    .local v8, button14:Landroid/view/View;
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    const v27, 0x7f080013

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 113
    .local v9, button15:Landroid/view/View;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    const v27, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 116
    .local v10, button16:Landroid/view/View;
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    const v27, 0x7f08000c

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/admob/android/ads/AdView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->example_adview2:Lcom/admob/android/ads/AdView;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->example_adview2:Lcom/admob/android/ads/AdView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 122
    const-string v27, "tab_test3"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {p0 .. p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020006

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    const v28, 0x7f080016

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 124
    const v27, 0x7f080018

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 125
    .local v11, button18:Landroid/view/View;
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    const v27, 0x7f080019

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 128
    .local v12, button19:Landroid/view/View;
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    const v27, 0x7f08001a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 131
    .local v14, button20:Landroid/view/View;
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 133
    const v27, 0x7f08001b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 134
    .local v15, button21:Landroid/view/View;
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    const v27, 0x7f08001c

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 137
    .local v16, button22:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    const v27, 0x7f08001d

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 140
    .local v17, button23:Landroid/view/View;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    const v27, 0x7f08001e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 143
    .local v18, button24:Landroid/view/View;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    const v27, 0x7f08001f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 146
    .local v19, button25:Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    const v27, 0x7f080017

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/admob/android/ads/AdView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->example_adview3:Lcom/admob/android/ads/AdView;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->example_adview3:Lcom/admob/android/ads/AdView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 152
    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 155
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1657
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1659
    invoke-virtual {p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1660
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f030001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1663
    const/4 v1, 0x1

    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 29
    .parameter "v"

    .prologue
    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v26

    packed-switch v26, :pswitch_data_0

    .line 1535
    :goto_0
    :pswitch_0
    const/16 v26, 0x0

    return v26

    .line 182
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v2, builder0:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 184
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 185
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$1;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$1;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 209
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$2;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$2;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 246
    .end local v2           #builder0:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v3, builder1:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 248
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 249
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$3;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$3;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 273
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$4;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$4;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 302
    .end local v3           #builder1:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v13, builder2:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v13

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 304
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 305
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$5;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$5;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 329
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$6;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$6;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 358
    .end local v13           #builder2:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v20, builder3:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 360
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 361
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$7;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$7;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 385
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$8;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$8;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 414
    .end local v20           #builder3:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v21, builder4:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 416
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 417
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$9;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$9;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 441
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$10;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$10;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 471
    .end local v21           #builder4:Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v22, builder5:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 473
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 474
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$11;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$11;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 498
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$12;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$12;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 527
    .end local v22           #builder5:Landroid/app/AlertDialog$Builder;
    :pswitch_7
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    .local v23, builder6:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 529
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 530
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$13;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$13;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 554
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$14;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$14;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 583
    .end local v23           #builder6:Landroid/app/AlertDialog$Builder;
    :pswitch_8
    new-instance v24, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    .local v24, builder7:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 585
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 586
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$15;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$15;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 610
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$16;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$16;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 639
    .end local v24           #builder7:Landroid/app/AlertDialog$Builder;
    :pswitch_9
    new-instance v25, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 640
    .local v25, builder9:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 641
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 642
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$17;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$17;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 666
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$18;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$18;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 690
    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 695
    .end local v25           #builder9:Landroid/app/AlertDialog$Builder;
    :pswitch_a
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 696
    .local v4, builder10:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 697
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 698
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$19;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$19;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 722
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$20;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$20;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 746
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 750
    .end local v4           #builder10:Landroid/app/AlertDialog$Builder;
    :pswitch_b
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 751
    .local v5, builder11:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 752
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 753
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$21;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$21;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 777
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$22;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$22;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 806
    .end local v5           #builder11:Landroid/app/AlertDialog$Builder;
    :pswitch_c
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 807
    .local v6, builder12:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 808
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 809
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$23;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$23;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 833
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$24;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$24;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 857
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 862
    .end local v6           #builder12:Landroid/app/AlertDialog$Builder;
    :pswitch_d
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 863
    .local v7, builder13:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 864
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 865
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$25;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$25;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 889
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$26;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$26;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 913
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 918
    .end local v7           #builder13:Landroid/app/AlertDialog$Builder;
    :pswitch_e
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 919
    .local v8, builder14:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 920
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 921
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$27;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$27;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 945
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$28;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$28;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 969
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 974
    .end local v8           #builder14:Landroid/app/AlertDialog$Builder;
    :pswitch_f
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 975
    .local v9, builder15:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 976
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 977
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$29;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$29;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1001
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$30;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$30;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1025
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1030
    .end local v9           #builder15:Landroid/app/AlertDialog$Builder;
    :pswitch_10
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1031
    .local v10, builder16:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1032
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1033
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$31;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$31;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1057
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$32;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$32;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1081
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1086
    .end local v10           #builder16:Landroid/app/AlertDialog$Builder;
    :pswitch_11
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1087
    .local v11, builder18:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v11

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1088
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1089
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$33;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$33;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1113
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$34;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$34;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1137
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1143
    .end local v11           #builder18:Landroid/app/AlertDialog$Builder;
    :pswitch_12
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1144
    .local v12, builder19:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1145
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1146
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$35;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1170
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$36;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$36;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1194
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1199
    .end local v12           #builder19:Landroid/app/AlertDialog$Builder;
    :pswitch_13
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v14, builder20:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1201
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1202
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$37;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$37;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1226
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$38;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$38;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1250
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1255
    .end local v14           #builder20:Landroid/app/AlertDialog$Builder;
    :pswitch_14
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1256
    .local v15, builder21:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1257
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1258
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$39;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$39;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1282
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$40;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$40;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1306
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1311
    .end local v15           #builder21:Landroid/app/AlertDialog$Builder;
    :pswitch_15
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1312
    .local v16, builder22:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1313
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1314
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$41;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$41;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1338
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$42;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$42;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1362
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1367
    .end local v16           #builder22:Landroid/app/AlertDialog$Builder;
    :pswitch_16
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1368
    .local v17, builder23:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1369
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1370
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$43;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$43;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1394
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$44;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$44;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1418
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1423
    .end local v17           #builder23:Landroid/app/AlertDialog$Builder;
    :pswitch_17
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1424
    .local v18, builder24:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1425
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1426
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$45;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$45;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1450
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$46;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$46;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1474
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1479
    .end local v18           #builder24:Landroid/app/AlertDialog$Builder;
    :pswitch_18
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1480
    .local v19, builder25:Landroid/app/AlertDialog$Builder;
    const-string v26, "Which tone would you like to set?"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1481
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1482
    const-string v27, "Ringtone"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$47;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$47;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    .line 1506
    const-string v27, "Notification"

    new-instance v28, Lcom/soundboard/itcrowd/It_Crowd_Sounds$48;

    invoke-direct/range {v28 .. v29}, Lcom/soundboard/itcrowd/It_Crowd_Sounds$48;-><init>(Lcom/soundboard/itcrowd/It_Crowd_Sounds;)V

    invoke-virtual/range {v26 .. v28}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1530
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7f080002
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1670
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1680
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1675
    :pswitch_0
    invoke-virtual {p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->finish()V

    .line 1676
    const/4 v0, 0x1

    goto :goto_0

    .line 1670
    :pswitch_data_0
    .packed-switch 0x7f080021
        :pswitch_0
    .end packed-switch
.end method

.method public savetone(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .parameter "filepath"
    .parameter "passedType"
    .parameter "passedName"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1764
    move-object v5, p1

    .line 1765
    .local v5, path:Ljava/lang/String;
    const-string v3, "audio/mpeg"

    .line 1766
    .local v3, mimeType:Ljava/lang/String;
    move-object v1, p3

    .line 1768
    .local v1, fileName:Ljava/lang/String;
    move-object v0, v1

    .line 1770
    .local v0, artist:Ljava/lang/String;
    move v2, p2

    .line 1772
    .local v2, fileType:I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1773
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_data"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const-string v8, "title"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    const-string v8, "artist"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const-string v8, "is_ringtone"

    const/4 v9, 0x3

    if-ne v2, v9, :cond_0

    move v9, v10

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1782
    const-string v8, "is_notification"

    const/4 v9, 0x2

    if-ne v2, v9, :cond_1

    move v9, v10

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1783
    const-string v8, "is_alarm"

    if-ne v2, v10, :cond_2

    move v9, v10

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1784
    const-string v8, "is_music"

    if-nez v2, :cond_3

    move v9, v10

    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1787
    invoke-static {v5}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1788
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 1789
    .local v4, newUri:Landroid/net/Uri;
    const/4 v8, -0x1

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/soundboard/itcrowd/It_Crowd_Sounds;->setResult(ILandroid/content/Intent;)V

    .line 1792
    return-void

    .end local v4           #newUri:Landroid/net/Uri;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_0
    move v9, v11

    .line 1781
    goto :goto_0

    :cond_1
    move v9, v11

    .line 1782
    goto :goto_1

    :cond_2
    move v9, v11

    .line 1783
    goto :goto_2

    :cond_3
    move v9, v11

    .line 1784
    goto :goto_3
.end method
