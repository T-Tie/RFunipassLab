; ModuleID = '<stdin>'
source_filename = "/tmp/tmppxqc8soi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i93 = alloca i8, align 1
  %__c.addr.i79 = alloca i8, align 1
  %__c.addr.i66 = alloca i8, align 1
  %__c.addr.i53 = alloca i8, align 1
  %__c.addr.i40 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef nonnull %a) #8
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  call fastcc void @outlined_ir_func_0(ptr %vbase.offset.ptr8.i, ptr %a)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull align 16 dereferenceable(50) %a) #8
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(50) %a, i64 noundef %call.i.i)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  %conv = trunc i64 %call5 to i32
  %vtable7.i14 = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr8.i15 = getelementptr i8, ptr %vtable7.i14, i64 -24
  %vtable.i41 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i42 = getelementptr i8, ptr %vtable.i41, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %for.inc68, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %i.0 = phi i32 [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %inc, %for.inc68 ]
  %sum.0 = phi i32 [ %conv, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %sum.1, %for.inc68 ]
  %0 = load i32, ptr %n, align 4, !tbaa !9
  %sub = add nsw i32 %0, -1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %if.then6.i13, label %for.end69

if.then6.i13:                                     ; preds = %for.cond
  call fastcc void @outlined_ir_func_0(ptr %vbase.offset.ptr8.i15, ptr %a)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit33

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit33: ; preds = %if.then6.i13
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  %conv10 = trunc i64 %call9 to i32
  %add = add nsw i32 %sum.0, %conv10
  %add11 = add nsw i32 %add, 1
  %cmp13 = icmp eq i32 %sum.0, 0
  br i1 %cmp13, label %for.cond15.preheader, label %if.else

for.cond15.preheader:                             ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit33
  %sext148 = shl i64 %call9, 32
  %idx.ext = ashr exact i64 %sext148, 32
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %idx.ext
  %vtable.i34 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i35 = getelementptr i8, ptr %vtable.i34, i64 -24
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc
  %p.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %a, %for.cond15.preheader ]
  %cmp17 = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp17, label %for.body18, label %for.inc68

for.body18:                                       ; preds = %for.cond15
  %1 = load i8, ptr %p.0, align 1, !tbaa !12, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 %1, ptr %__c.addr.i, align 1, !tbaa !12
  %vbase.offset.i36 = load i64, ptr %vbase.offset.ptr.i35, align 8, !invariant.load !8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i36
  %2 = load i64, ptr %gep, align 8, !tbaa !13, !invariant.load !8
  %cmp.not.i = icmp eq i64 %2, 0
  call fastcc void @outlined_ir_func_1(i1 %cmp.not.i, ptr %__c.addr.i, i8 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body18
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  br label %for.cond15, !llvm.loop !24

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit33
  %cmp20 = icmp slt i32 %add, 79
  br i1 %cmp20, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i40)
  store i8 32, ptr %__c.addr.i40, align 1, !tbaa !12
  %vbase.offset.i43 = load i64, ptr %vbase.offset.ptr.i42, align 8, !invariant.load !8
  %gep150 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i43
  %3 = load i64, ptr %gep150, align 8, !tbaa !13, !invariant.load !8
  %cmp.not.i46 = icmp eq i64 %3, 0
  call fastcc void @outlined_ir_func_1(i1 %cmp.not.i46, ptr %__c.addr.i40, i8 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit52

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit52: ; preds = %if.then23
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i40)
  %sext = shl i64 %call9, 32
  %idx.ext28 = ashr exact i64 %sext, 32
  %add.ptr29 = getelementptr inbounds i8, ptr %a, i64 %idx.ext28
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit52
  %p.1 = phi ptr [ %a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit52 ], [ %incdec.ptr34, %for.inc33 ]
  %cmp30 = icmp ult ptr %p.1, %add.ptr29
  br i1 %cmp30, label %for.body31, label %if.end

for.body31:                                       ; preds = %for.cond26
  %4 = load i8, ptr %p.1, align 1, !tbaa !12, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i53)
  store i8 %4, ptr %__c.addr.i53, align 1, !tbaa !12
  call fastcc void @outlined_ir_func_1(i1 %cmp.not.i46, ptr %__c.addr.i53, i8 %4)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body31
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i53)
  %incdec.ptr34 = getelementptr inbounds nuw i8, ptr %p.1, i64 1
  br label %for.cond26, !llvm.loop !27

if.end:                                           ; preds = %for.cond26, %if.else
  %cmp36 = icmp eq i32 %add11, 80
  br i1 %cmp36, label %if.then37, label %if.end51

if.then37:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i66)
  store i8 32, ptr %__c.addr.i66, align 1, !tbaa !12
  %vbase.offset.i69 = load i64, ptr %vbase.offset.ptr.i42, align 8, !invariant.load !8
  %add.ptr.i70 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i69
  %_M_width.i.i71 = getelementptr inbounds nuw i8, ptr %add.ptr.i70, i64 16
  %5 = load i64, ptr %_M_width.i.i71, align 8, !tbaa !13, !invariant.load !8
  %cmp.not.i72 = icmp eq i64 %5, 0
  call fastcc void @outlined_ir_func_1(i1 %cmp.not.i72, ptr %__c.addr.i66, i8 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit78

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit78: ; preds = %if.then37
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i66)
  %sext147 = shl i64 %call9, 32
  %idx.ext42 = ashr exact i64 %sext147, 32
  %add.ptr43 = getelementptr inbounds i8, ptr %a, i64 %idx.ext42
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit78
  %p.2 = phi ptr [ %a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit78 ], [ %incdec.ptr48, %for.inc47 ]
  %cmp44 = icmp ult ptr %p.2, %add.ptr43
  br i1 %cmp44, label %for.body45, label %if.end51.thread

for.body45:                                       ; preds = %for.cond40
  %6 = load i8, ptr %p.2, align 1, !tbaa !12, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i79)
  store i8 %6, ptr %__c.addr.i79, align 1, !tbaa !12
  call fastcc void @outlined_ir_func_1(i1 %cmp.not.i72, ptr %__c.addr.i79, i8 %6)
  br label %for.inc47

for.inc47:                                        ; preds = %for.body45
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i79)
  %incdec.ptr48 = getelementptr inbounds nuw i8, ptr %p.2, i64 1
  br label %for.cond40, !llvm.loop !28

if.end51.thread:                                  ; preds = %for.cond40
  call fastcc void @outlined_ir_func_2(ptr %add.ptr.i70)
  br label %for.inc68

if.end51:                                         ; preds = %if.end
  %cmp52 = icmp sgt i32 %add, 79
  br i1 %cmp52, label %if.then53, label %for.inc68

if.then53:                                        ; preds = %if.end51
  %vbase.offset.i115 = load i64, ptr %vbase.offset.ptr.i42, align 8, !invariant.load !8
  %add.ptr.i116 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i115
  call fastcc void @outlined_ir_func_2(ptr %add.ptr.i116)
  %sext146 = shl i64 %call9, 32
  %idx.ext58 = ashr exact i64 %sext146, 32
  %add.ptr59 = getelementptr inbounds i8, ptr %a, i64 %idx.ext58
  %_M_width.i.i98 = getelementptr inbounds nuw i8, ptr %add.ptr.i116, i64 16
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc63, %if.then53
  %p.3 = phi ptr [ %a, %if.then53 ], [ %incdec.ptr64, %for.inc63 ]
  %cmp60 = icmp ult ptr %p.3, %add.ptr59
  br i1 %cmp60, label %for.body61, label %for.inc68

for.body61:                                       ; preds = %for.cond56
  %7 = load i8, ptr %p.3, align 1, !tbaa !12, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i93)
  store i8 %7, ptr %__c.addr.i93, align 1, !tbaa !12
  %8 = load i64, ptr %_M_width.i.i98, align 8, !tbaa !13, !invariant.load !8
  %cmp.not.i99 = icmp eq i64 %8, 0
  call fastcc void @outlined_ir_func_1(i1 %cmp.not.i99, ptr %__c.addr.i93, i8 %7)
  br label %for.inc63

for.inc63:                                        ; preds = %for.body61
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i93)
  %incdec.ptr64 = getelementptr inbounds nuw i8, ptr %p.3, i64 1
  br label %for.cond56, !llvm.loop !29

for.inc68:                                        ; preds = %for.cond56, %for.cond15, %if.end51.thread, %if.end51
  %sum.1 = phi i32 [ %add11, %if.end51 ], [ 0, %if.end51.thread ], [ %add, %for.cond15 ], [ %conv10, %for.cond56 ]
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !30

for.end69:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0, ptr %1) unnamed_addr #6 {
newFuncRoot:
  br label %entry_to_outline

entry_to_outline:                                 ; preds = %newFuncRoot
  %vbase.offset9.i = load i64, ptr %0, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(50) %1, i64 noundef 50)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %2 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !31, !invariant.load !8
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub

land.lhs.true.i:                                  ; preds = %entry_to_outline
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %3 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !13, !invariant.load !8
  %4 = add i64 %3, -51
  %or.cond.i = icmp ult i64 %4, -50
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %5 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !32, !invariant.load !8
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub: ; preds = %if.then28.i, %if.then19.i, %land.lhs.true.i, %entry_to_outline
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_1(i1 %0, ptr %1, i8 %2) unnamed_addr #6 {
newFuncRoot:
  br label %for.body18_to_outline

for.body18_to_outline:                            ; preds = %newFuncRoot
  br i1 %0, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body18_to_outline
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef 1)
  br label %for.inc.exitStub

if.end.i:                                         ; preds = %for.body18_to_outline
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  br label %for.inc.exitStub

for.inc.exitStub:                                 ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_2(ptr %0) unnamed_addr #6 {
newFuncRoot:
  br label %if.end51.thread_to_outline

if.end51.thread_to_outline:                       ; preds = %newFuncRoot
  %call.i110 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 noundef signext 10)
  %call1.i111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i110)
  %call.i.i112 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i111)
  br label %if.end51.thread_after_outline.exitStub

if.end51.thread_after_outline.exitStub:           ; preds = %if.end51.thread_to_outline
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !15, i64 16}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !20, i64 48, !11, i64 64, !10, i64 192, !21, i64 200, !22, i64 208}
!15 = !{!"long", !11, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!19 = !{!"any pointer", !11, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !15, i64 8}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!22 = !{!"_ZTSSt6locale", !23, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!24 = distinct !{!24, !25, !26}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !25, !26}
!28 = distinct !{!28, !25, !26}
!29 = distinct !{!29, !25, !26}
!30 = distinct !{!30, !25, !26}
!31 = !{!14, !17, i64 32}
!32 = !{!33, !36, i64 232}
!33 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !14, i64 0, !34, i64 216, !11, i64 224, !35, i64 225, !36, i64 232, !37, i64 240, !38, i64 248, !39, i64 256}
!34 = !{!"p1 _ZTSSo", !19, i64 0}
!35 = !{!"bool", !11, i64 0}
!36 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!37 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!38 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!39 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
