; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_2qen73x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@len1 = dso_local local_unnamed_addr global i32 0, align 4
@len2 = dso_local local_unnamed_addr global i32 0, align 4
@len3 = dso_local local_unnamed_addr global i32 0, align 4
@replacement = dso_local global [256 x i8] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [260 x i8], align 16
  %substr = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %str) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %substr) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 260)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %substr, i64 noundef 256)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @replacement, i64 noundef 256)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr @len1, align 4, !tbaa !5
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %substr) #7
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr @len2, align 4, !tbaa !5
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @replacement) #7
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr @len3, align 4, !tbaa !5
  call void @_Z6answerPcS_(ptr noundef nonnull %str, ptr noundef nonnull %substr)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %substr) #6
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %str) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6answerPcS_(ptr noundef readonly captures(none) %str, ptr noundef readonly captures(none) %substr) local_unnamed_addr #2 {
entry:
  %__c.addr.i55 = alloca i8, align 1
  %__c.addr.i42 = alloca i8, align 1
  %__c.addr.i29 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %0 = load i32, ptr @len1, align 4, !tbaa !5
  %1 = load i32, ptr @len2, align 4
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc49, %entry
  %indvars.iv89 = phi i32 [ %indvars.iv.next90, %for.inc49 ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc49 ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond54, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %3 = load i8, ptr %substr, align 1, !tbaa !9
  %cmp3 = icmp eq i8 %2, %3
  br i1 %cmp3, label %for.cond4, label %for.inc49

for.cond4:                                        ; preds = %for.body, %if.then16
  %4 = phi i8 [ %.pre102, %if.then16 ], [ %2, %for.body ]
  %5 = phi i8 [ %.pre101, %if.then16 ], [ %2, %for.body ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %if.then16 ], [ 0, %for.body ]
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %if.then16 ], [ %indvars.iv, %for.body ]
  %cmp11 = icmp ne i8 %5, %4
  %cmp15.not = icmp eq i8 %5, 0
  %or.cond = or i1 %cmp15.not, %cmp11
  br i1 %or.cond, label %for.end, label %if.then16

if.then16:                                        ; preds = %for.cond4
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %arrayidx6.phi.trans.insert = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv.next76
  %.pre101 = load i8, ptr %arrayidx6.phi.trans.insert, align 1, !tbaa !9
  %arrayidx9.phi.trans.insert = getelementptr inbounds nuw i8, ptr %substr, i64 %indvars.iv.next78
  %.pre102 = load i8, ptr %arrayidx9.phi.trans.insert, align 1, !tbaa !9
  br label %for.cond4, !llvm.loop !10

for.end:                                          ; preds = %for.cond4
  %6 = trunc nuw nsw i64 %indvars.iv77 to i32
  %cmp18 = icmp eq i32 %1, %6
  br i1 %cmp18, label %for.cond21.preheader, label %for.inc49

for.cond21.preheader:                             ; preds = %for.end
  %wide.trip.count92 = zext i32 %indvars.iv89 to i64
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv86 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next87, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond93.not = icmp eq i64 %indvars.iv86, %wide.trip.count92
  br i1 %exitcond93.not, label %for.cond29, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv86
  %7 = load i8, ptr %arrayidx25, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %7, ptr %__c.addr.i, align 1, !tbaa !9
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep70 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %8 = load i64, ptr %gep70, align 8, !tbaa !15
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body23
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body23
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond21, !llvm.loop !26

for.cond29:                                       ; preds = %for.cond21, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit41
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit41 ], [ 0, %for.cond21 ]
  %9 = load i32, ptr @len3, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp30 = icmp slt i64 %indvars.iv94, %10
  br i1 %cmp30, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds nuw [256 x i8], ptr @replacement, i64 0, i64 %indvars.iv94
  %11 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i29)
  store i8 %11, ptr %__c.addr.i29, align 1, !tbaa !9
  %vtable.i30 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i31 = getelementptr i8, ptr %vtable.i30, i64 -24
  %vbase.offset.i32 = load i64, ptr %vbase.offset.ptr.i31, align 8
  %gep71 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i32
  %12 = load i64, ptr %gep71, align 8, !tbaa !15
  %cmp.not.i35 = icmp eq i64 %12, 0
  br i1 %cmp.not.i35, label %if.end.i39, label %if.then.i36

if.then.i36:                                      ; preds = %for.body31
  %call1.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i29, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit41

if.end.i39:                                       ; preds = %for.body31
  %call2.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %11)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit41

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit41: ; preds = %if.then.i36, %if.end.i39
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i29)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond29, !llvm.loop !27

for.end37:                                        ; preds = %for.cond29
  %13 = load i32, ptr @len2, align 4, !tbaa !5
  %14 = add i32 %13, %indvars.iv89
  %15 = sext i32 %14 to i64
  br label %for.cond38

for.cond38:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54, %for.end37
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54 ], [ %15, %for.end37 ]
  %16 = load i32, ptr @len1, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp39 = icmp slt i64 %indvars.iv98, %17
  br i1 %cmp39, label %for.body40, label %if.end63

for.body40:                                       ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds i8, ptr %str, i64 %indvars.iv98
  %18 = load i8, ptr %arrayidx42, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i42)
  store i8 %18, ptr %__c.addr.i42, align 1, !tbaa !9
  %vtable.i43 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i44 = getelementptr i8, ptr %vtable.i43, i64 -24
  %vbase.offset.i45 = load i64, ptr %vbase.offset.ptr.i44, align 8
  %gep72 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i45
  %19 = load i64, ptr %gep72, align 8, !tbaa !15
  %cmp.not.i48 = icmp eq i64 %19, 0
  br i1 %cmp.not.i48, label %if.end.i52, label %if.then.i49

if.then.i49:                                      ; preds = %for.body40
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i42, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54

if.end.i52:                                       ; preds = %for.body40
  %call2.i53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %18)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54: ; preds = %if.then.i49, %if.end.i52
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i42)
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1
  br label %for.cond38, !llvm.loop !28

for.inc49:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next90 = add nuw i32 %indvars.iv89, 1
  br label %for.cond, !llvm.loop !29

for.cond54:                                       ; preds = %for.cond, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit67
  %20 = phi i32 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit67 ], [ %0, %for.cond ]
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit67 ], [ 0, %for.cond ]
  %21 = sext i32 %20 to i64
  %cmp55 = icmp slt i64 %indvars.iv83, %21
  br i1 %cmp55, label %for.body56, label %if.end63

for.body56:                                       ; preds = %for.cond54
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv83
  %22 = load i8, ptr %arrayidx58, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i55)
  store i8 %22, ptr %__c.addr.i55, align 1, !tbaa !9
  %vtable.i56 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i57 = getelementptr i8, ptr %vtable.i56, i64 -24
  %vbase.offset.i58 = load i64, ptr %vbase.offset.ptr.i57, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i58
  %23 = load i64, ptr %gep, align 8, !tbaa !15
  %cmp.not.i61 = icmp eq i64 %23, 0
  br i1 %cmp.not.i61, label %if.end.i65, label %if.then.i62

if.then.i62:                                      ; preds = %for.body56
  %call1.i63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i55, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit67

if.end.i65:                                       ; preds = %for.body56
  %call2.i66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %22)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit67

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit67: ; preds = %if.then.i62, %if.end.i65
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i55)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %.pre = load i32, ptr @len1, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !30

if.end63:                                         ; preds = %for.cond38, %for.cond54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !11, !12}
!29 = distinct !{!29, !11, !12}
!30 = distinct !{!30, !11, !12}
