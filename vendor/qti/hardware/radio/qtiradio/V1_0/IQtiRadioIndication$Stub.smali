.class public abstract Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 268
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 310
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 311
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 312
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 313
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 287
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 288
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 286
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 287
    nop

    :array_20
    .array-data 1
        0x47t
        0x5et
        -0x6ft
        0x44t
        -0x48t
        0x40t
        0x4dt
        -0x16t
        0x34t
        0x51t
        0x6at
        0x43t
        0x6at
        0x2t
        -0x44t
        0x79t
        -0x2dt
        -0x1ct
        0xct
        -0x67t
        0xct
        0x41t
        -0x2at
        0x5bt
        -0x5dt
        0x4et
        0x7ct
        -0x49t
        0x2et
        -0x3et
        0x49t
        0x6at
    .end array-data

    .line 288
    :array_34
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 274
    const-string/jumbo v2, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioIndication"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 275
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 273
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    const-string/jumbo v0, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 318
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 319
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 22
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    sparse-switch p1, :sswitch_data_f4

    .line 461
    :goto_3
    :sswitch_3
    return-void

    .line 350
    :sswitch_4
    const-string/jumbo v14, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioIndication"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 353
    .local v13, "type":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->qtiRadioIndication(I)V

    goto :goto_3

    .line 359
    .end local v13    # "type":I
    :sswitch_16
    const-string/jumbo v14, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v8

    .line 362
    .local v8, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 363
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 370
    .end local v8    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_31
    const-string/jumbo v14, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 379
    :sswitch_43
    const-string/jumbo v14, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 383
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 390
    .end local v7    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_5e
    const-string/jumbo v14, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v9

    .line 393
    .local v9, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 395
    new-instance v4, Landroid/os/HwBlob;

    const/16 v14, 0x10

    invoke-direct {v4, v14}, Landroid/os/HwBlob;-><init>(I)V

    .line 397
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 398
    .local v11, "_hidl_vec_size":I
    const-wide/16 v14, 0x8

    invoke-virtual {v4, v14, v15, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 399
    const-wide/16 v14, 0xc

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 400
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v14, v11, 0x20

    invoke-direct {v12, v14}, Landroid/os/HwBlob;-><init>(I)V

    .line 401
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_91
    if-ge v5, v11, :cond_af

    .line 403
    mul-int/lit8 v14, v5, 0x20

    int-to-long v2, v14

    .line 404
    .local v2, "_hidl_array_offset_1":J
    const/4 v6, 0x0

    .local v6, "_hidl_index_1_0":I
    :goto_97
    const/16 v14, 0x20

    if-ge v6, v14, :cond_ac

    .line 405
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    aget-byte v14, v14, v6

    invoke-virtual {v12, v2, v3, v14}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 406
    const-wide/16 v14, 0x1

    add-long/2addr v2, v14

    .line 404
    add-int/lit8 v6, v6, 0x1

    goto :goto_97

    .line 401
    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_91

    .line 410
    .end local v2    # "_hidl_array_offset_1":J
    .end local v6    # "_hidl_index_1_0":I
    :cond_af
    const-wide/16 v14, 0x0

    invoke-virtual {v4, v14, v15, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 412
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 420
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    :sswitch_be
    const-string/jumbo v14, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 438
    :sswitch_cb
    const-string/jumbo v14, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v10

    .line 441
    .local v10, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 442
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 449
    .end local v10    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_e7
    const-string/jumbo v14, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 347
    :sswitch_data_f4
    .sparse-switch
        0x1 -> :sswitch_4
        0xf43484e -> :sswitch_16
        0xf444247 -> :sswitch_31
        0xf445343 -> :sswitch_43
        0xf485348 -> :sswitch_5e
        0xf494e54 -> :sswitch_be
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_cb
        0xf535953 -> :sswitch_e7
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 304
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string/jumbo v0, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    return-object p0

    .line 332
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 295
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method
