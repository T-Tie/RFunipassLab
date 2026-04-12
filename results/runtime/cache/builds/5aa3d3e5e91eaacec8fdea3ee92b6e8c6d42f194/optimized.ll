; ModuleID = '<stdin>'
source_filename = "/tmp/tmp16hbw8gp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@sum = dso_local local_unnamed_addr global i32 5, align 4
@a = dso_local global [999999999 x i8] zeroinitializer, align 16
@b = dso_local global [999999999 x i8] zeroinitializer, align 16
@p = dso_local local_unnamed_addr global i32 0, align 4
@l = dso_local local_unnamed_addr global i32 2, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z5chengi(i32 %m) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %l.promoted = load i32, ptr @l, align 4, !tbaa !5
  %sum.promoted = load i32, ptr @sum, align 4, !tbaa !5
  %smax20 = tail call i32 @llvm.smax.i32(i32 %sum.promoted, i32 %0)
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then34, %entry
  %inc3513 = phi i32 [ %inc35, %if.then34 ], [ %sum.promoted, %entry ]
  %1 = phi i32 [ %9, %if.then34 ], [ %l.promoted, %entry ]
  %2 = zext i32 %1 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %tailrecurse
  %indvars.iv = phi i64 [ %4, %for.body ], [ %2, %tailrecurse ]
  %div11 = phi i32 [ %div, %for.body ], [ 0, %tailrecurse ]
  %3 = trunc nuw i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds nuw [999999999 x i8], ptr @a, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %5 to i32
  %sub1 = shl nsw i32 %conv, 1
  %mul = add nsw i32 %sub1, -96
  %rem.lhs.trunc = trunc nsw i32 %mul to i16
  %rem10 = srem i16 %rem.lhs.trunc, 10
  %rem.sext = sext i16 %rem10 to i32
  %add = add nsw i32 %div11, %rem.sext
  %rem2 = srem i32 %add, 10
  %6 = trunc nsw i32 %rem2 to i8
  %conv4 = add nsw i8 %6, 48
  %arrayidx6 = getelementptr inbounds nuw [999999999 x i8], ptr @b, i64 0, i64 %indvars.iv
  store i8 %conv4, ptr %arrayidx6, align 1, !tbaa !9
  %add13 = add nsw i32 %mul, %div11
  %div = sdiv i32 %add13, 10
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = trunc i32 %div11 to i8
  %conv15 = add i8 %7, 48
  store i8 %conv15, ptr @b, align 16, !tbaa !9
  %cmp17.not = icmp eq i8 %7, 0
  br i1 %cmp17.not, label %for.cond21.preheader, label %if.end.thread

for.cond21.preheader:                             ; preds = %for.end
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond21

if.end.thread:                                    ; preds = %for.end
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @l, align 4, !tbaa !5
  br label %if.end32

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body23
  %indvars.iv17 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next18, %for.body23 ]
  %exitcond.not = icmp eq i64 %indvars.iv17, %wide.trip.count
  br i1 %exitcond.not, label %if.end32, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %arrayidx26 = getelementptr inbounds nuw [999999999 x i8], ptr @b, i64 0, i64 %indvars.iv.next18
  %8 = load i8, ptr %arrayidx26, align 1, !tbaa !9
  %arrayidx28 = getelementptr inbounds nuw [999999999 x i8], ptr @b, i64 0, i64 %indvars.iv17
  store i8 %8, ptr %arrayidx28, align 1, !tbaa !9
  br label %for.cond21, !llvm.loop !13

if.end32:                                         ; preds = %for.cond21, %if.end.thread
  %9 = phi i32 [ %inc, %if.end.thread ], [ %1, %for.cond21 ]
  %call = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @a, ptr noundef nonnull dereferenceable(1) @b) #6
  %exitcond21.not = icmp eq i32 %inc3513, %smax20
  br i1 %exitcond21.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end32
  %inc35 = add i32 %inc3513, 1
  store i32 %inc35, ptr @sum, align 4, !tbaa !5
  br label %tailrecurse

if.end36:                                         ; preds = %if.end32
  store i32 %div11, ptr @p, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %__c.addr.i = alloca i8, align 1
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %.pr = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pr, %if.then ], [ %0, %entry ]
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 2)
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %2 = phi i32 [ %.pre, %if.then3 ], [ %1, %if.end ]
  %cmp6 = icmp eq i32 %2, 2
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %call8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 4)
  %.pr3 = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %3 = phi i32 [ %.pr3, %if.then7 ], [ %2, %if.end5 ]
  %cmp10 = icmp eq i32 %3, 3
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 8)
  %.pre6 = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %4 = phi i32 [ %.pre6, %if.then11 ], [ %3, %if.end9 ]
  %cmp14 = icmp eq i32 %4, 4
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %call16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 16)
  %.pr4 = load i32, ptr @n, align 4, !tbaa !5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %5 = phi i32 [ %.pr4, %if.then15 ], [ %4, %if.end13 ]
  store i8 49, ptr @a, align 16, !tbaa !9
  store i8 54, ptr getelementptr inbounds nuw (i8, ptr @a, i64 1), align 1, !tbaa !9
  %cmp18 = icmp sgt i32 %5, 4
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  tail call void @_Z5chengi(i32 poison)
  br label %for.cond

for.cond:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %if.then19
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %if.then19 ]
  %6 = load i32, ptr @l, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp20 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp20, label %for.body, label %if.end22

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [999999999 x i8], ptr @a, i64 0, i64 %indvars.iv
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %8, ptr %__c.addr.i, align 1, !tbaa !9
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %9 = load i64, ptr %gep, align 8, !tbaa !16
  %cmp.not.i = icmp eq i64 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !27

if.end22:                                         ; preds = %for.cond, %if.end17
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #5

attributes #0 = { mustprogress nofree norecurse nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

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
!13 = distinct !{!13, !11, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = distinct !{!27, !11, !12}
