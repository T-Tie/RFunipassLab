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
  call void @llvm.lifetime.start.p0(i64 noundef 260, ptr noundef nonnull align 16 captures(none) dereferenceable(260) %str) #7
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %substr) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(260) %str, i64 noundef 260)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %substr, i64 noundef 256)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) @replacement, i64 noundef 256)
  %call5 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(260) %str) #8
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr @len1, align 4, !tbaa !5
  %call7 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %substr) #8
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr @len2, align 4, !tbaa !5
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @replacement) #8
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr @len3, align 4, !tbaa !5
  call void @_Z6answerPcS_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(260) %str, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(256) %substr)
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %substr) #9
  call void @llvm.lifetime.end.p0(i64 noundef 260, ptr noundef nonnull captures(none) %str) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6answerPcS_(ptr nofree noundef readonly captures(none) %str, ptr nofree noundef readonly captures(none) %substr) local_unnamed_addr #2 {
entry:
  %__c.addr.i27 = alloca i8, align 1
  %__c.addr.i14 = alloca i8, align 1
  %__c.addr.i1 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %0 = load i32, ptr @len1, align 4, !tbaa !5
  %1 = load i32, ptr @len2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0) #10
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc49, %entry
  %indvars.iv85 = phi i32 [ %indvars.iv.next86, %for.inc49 ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc49 ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond54.preheader, label %for.body

for.cond54.preheader:                             ; preds = %for.cond
  %vtable.i28 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i29 = getelementptr i8, ptr %vtable.i28, i64 -24
  br label %for.cond54

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %3 = load i8, ptr %substr, align 1, !tbaa !9, !invariant.load !10
  %cmp3 = icmp eq i8 %2, %3
  br i1 %cmp3, label %for.cond4, label %for.inc49

for.cond4:                                        ; preds = %for.body, %for.inc
  %4 = phi i8 [ %.pre98, %for.inc ], [ %2, %for.body ]
  %5 = phi i8 [ %.pre97, %for.inc ], [ %2, %for.body ]
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc ], [ 0, %for.body ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc ], [ %indvars.iv, %for.body ]
  %cmp11 = icmp eq i8 %5, %4
  %cmp15 = icmp ne i8 %5, 0
  %or.cond = and i1 %cmp15, %cmp11
  br i1 %or.cond, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %arrayidx6.phi.trans.insert = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv.next72
  %.pre97 = load i8, ptr %arrayidx6.phi.trans.insert, align 1, !tbaa !9, !invariant.load !10
  %arrayidx9.phi.trans.insert = getelementptr inbounds nuw i8, ptr %substr, i64 %indvars.iv.next74
  %.pre98 = load i8, ptr %arrayidx9.phi.trans.insert, align 1, !tbaa !9, !invariant.load !10
  br label %for.cond4, !llvm.loop !11

for.end:                                          ; preds = %for.cond4
  %6 = trunc nuw nsw i64 %indvars.iv73 to i32
  %cmp18 = icmp eq i32 %1, %6
  br i1 %cmp18, label %for.cond21.preheader, label %for.inc49

for.cond21.preheader:                             ; preds = %for.end
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %wide.trip.count88 = zext i32 %indvars.iv85 to i64
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc26
  %indvars.iv82 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next83, %for.inc26 ]
  %exitcond89.not = icmp eq i64 %indvars.iv82, %wide.trip.count88
  br i1 %exitcond89.not, label %for.cond29.preheader, label %for.body23

for.cond29.preheader:                             ; preds = %for.cond21
  %vtable.i2 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i3 = getelementptr i8, ptr %vtable.i2, i64 -24
  br label %for.cond29

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv82
  %7 = load i8, ptr %arrayidx25, align 1, !tbaa !9, !invariant.load !10
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i) #10
  call fastcc void @outlined_ir_func_0(i8 %7, ptr %__c.addr.i, ptr %vbase.offset.ptr.i)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body23
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond21, !llvm.loop !14

for.cond29:                                       ; preds = %for.cond29.preheader, %for.inc35
  %indvars.iv90 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next91, %for.inc35 ]
  %8 = load i32, ptr @len3, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp30 = icmp slt i64 %indvars.iv90, %9
  br i1 %cmp30, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds nuw [256 x i8], ptr @replacement, i64 0, i64 %indvars.iv90
  %10 = load i8, ptr %arrayidx33, align 1, !tbaa !9, !invariant.load !10
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i1)
  call fastcc void @outlined_ir_func_0(i8 %10, ptr %__c.addr.i1, ptr %vbase.offset.ptr.i3)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body31
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i1)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond29, !llvm.loop !15

for.end37:                                        ; preds = %for.cond29
  %11 = load i32, ptr @len2, align 4, !tbaa !5
  %vtable.i15 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i16 = getelementptr i8, ptr %vtable.i15, i64 -24
  %12 = add i32 %11, %indvars.iv85
  %13 = sext i32 %12 to i64
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc44, %for.end37
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.inc44 ], [ %13, %for.end37 ]
  %14 = load i32, ptr @len1, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %cmp39 = icmp slt i64 %indvars.iv94, %15
  br i1 %cmp39, label %for.body40, label %if.end63

for.body40:                                       ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds i8, ptr %str, i64 %indvars.iv94
  %16 = load i8, ptr %arrayidx42, align 1, !tbaa !9, !invariant.load !10
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i14)
  call fastcc void @outlined_ir_func_0(i8 %16, ptr %__c.addr.i14, ptr %vbase.offset.ptr.i16)
  br label %for.inc44

for.inc44:                                        ; preds = %for.body40
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i14)
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1
  br label %for.cond38, !llvm.loop !16

for.inc49:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next86 = add nuw i32 %indvars.iv85, 1
  br label %for.cond, !llvm.loop !17

for.cond54:                                       ; preds = %for.cond54.preheader, %for.inc60
  %17 = phi i32 [ %0, %for.cond54.preheader ], [ %.pre, %for.inc60 ]
  %indvars.iv79 = phi i64 [ 0, %for.cond54.preheader ], [ %indvars.iv.next80, %for.inc60 ]
  %18 = sext i32 %17 to i64
  %cmp55 = icmp slt i64 %indvars.iv79, %18
  br i1 %cmp55, label %for.body56, label %if.end63

for.body56:                                       ; preds = %for.cond54
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv79
  %19 = load i8, ptr %arrayidx58, align 1, !tbaa !9, !invariant.load !10
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i27)
  call fastcc void @outlined_ir_func_0(i8 %19, ptr %__c.addr.i27, ptr %vbase.offset.ptr.i29)
  br label %for.inc60

for.inc60:                                        ; preds = %for.body56
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i27)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %.pre = load i32, ptr @len1, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !18

if.end63:                                         ; preds = %for.cond38, %for.cond54
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: minsize mustprogress optsize uwtable
define internal fastcc void @outlined_ir_func_0(i8 %0, ptr %1, ptr %2) unnamed_addr #6 {
newFuncRoot:
  br label %for.body23_to_outline

for.body23_to_outline:                            ; preds = %newFuncRoot
  store i8 %0, ptr %1, align 1, !tbaa !9
  %vbase.offset.i = load i64, ptr %2, align 8, !invariant.load !10
  %gep66 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %3 = load i64, ptr %gep66, align 8, !tbaa !19, !invariant.load !10
  %cmp.not.i = icmp eq i64 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body23_to_outline
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef 1)
  br label %for.inc26.exitStub

if.end.i:                                         ; preds = %for.body23_to_outline
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %0)
  br label %for.inc26.exitStub

for.inc26.exitStub:                               ; preds = %if.end.i, %if.then.i
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { minsize mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }
attributes #10 = { nofree }

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
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = !{!20, !21, i64 16}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
