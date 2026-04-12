; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkq9jel0q.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %word = alloca [500 x [50 x i8]], align 16
  %l = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 25000, ptr nonnull %word) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %l) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %if.else34.i, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

if.else34.i:                                      ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc14
  %indvars.iv47 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next48, %for.inc14 ]
  %exitcond.not = icmp eq i64 %indvars.iv47, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %l, i64 0, i64 %indvars.iv47
  store i32 0, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv47
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body4
  %2 = phi i32 [ 0, %for.body4 ], [ %inc13, %while.body ]
  %q.0 = phi ptr [ %arrayidx8, %for.body4 ], [ %incdec.ptr, %while.body ]
  %3 = load i8, ptr %q.0, align 1, !tbaa !12
  %cmp10.not = icmp eq i8 %3, 0
  br i1 %cmp10.not, label %for.inc14, label %while.body

while.body:                                       ; preds = %while.cond
  %inc13 = add nuw nsw i32 %2, 1
  store i32 %inc13, ptr %arrayidx6, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %while.cond, !llvm.loop !13

for.inc14:                                        ; preds = %while.cond
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond2, !llvm.loop !14

for.cond17:                                       ; preds = %for.cond2, %if.end42
  %4 = phi i32 [ %.pre, %if.end42 ], [ %0, %for.cond2 ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %if.end42 ], [ 0, %for.cond2 ]
  %s.0 = phi i32 [ %add46, %if.end42 ], [ 0, %for.cond2 ]
  %5 = sext i32 %4 to i64
  %cmp18 = icmp slt i64 %indvars.iv51, %5
  br i1 %cmp18, label %for.body19, label %for.end49

for.body19:                                       ; preds = %for.cond17
  %cmp20 = icmp sgt i32 %s.0, 0
  %arrayidx22 = getelementptr inbounds nuw [500 x i32], ptr %l, i64 0, i64 %indvars.iv51
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %add = add nsw i32 %6, %s.0
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body19
  %cmp23 = icmp slt i32 %add, 81
  br i1 %cmp23, label %if.end35.thread59, label %if.then33

if.end35.thread59:                                ; preds = %land.lhs.true
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end42.sink.split

if.end:                                           ; preds = %for.body19
  %7 = icmp sgt i32 %add, 80
  br i1 %7, label %if.then33, label %if.end35

if.then33:                                        ; preds = %land.lhs.true, %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 10, ptr %__c.addr.i, align 1, !tbaa !12
  %vtable.i26 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i27 = getelementptr i8, ptr %vtable.i26, i64 -24
  %vbase.offset.i28 = load i64, ptr %vbase.offset.ptr.i27, align 8
  %gep45 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i28
  %8 = load i64, ptr %gep45, align 8, !tbaa !17
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then33
  %call1.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %if.end35.thread

if.end.i:                                         ; preds = %if.then33
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10)
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %if.end42.sink.split

if.end35:                                         ; preds = %if.end
  %cmp36 = icmp eq i32 %s.0, 0
  br i1 %cmp36, label %if.end42.sink.split, label %if.end42

if.end42.sink.split:                              ; preds = %if.end35, %if.end35.thread, %if.end35.thread59
  %s.142.ph = phi i32 [ %s.0, %if.end35.thread59 ], [ 0, %if.end35.thread ], [ 0, %if.end35 ]
  %arrayidx26 = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv51
  %call.i.i20 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx26) #5
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx26, i64 noundef %call.i.i20)
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.end35
  %s.142 = phi i32 [ %s.0, %if.end35 ], [ %s.142.ph, %if.end42.sink.split ]
  %add45 = add i32 %6, 1
  %add46 = add i32 %add45, %s.142
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !28

for.end49:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %l) #5
  call void @llvm.lifetime.end.p0(i64 25000, ptr nonnull %word) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = distinct !{!28, !10, !11}
