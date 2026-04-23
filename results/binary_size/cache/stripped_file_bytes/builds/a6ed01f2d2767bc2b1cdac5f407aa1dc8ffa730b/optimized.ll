; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8yi2osk2.cpp"
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
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %b = alloca [300 x i32], align 16
  %a = alloca [300 x [40 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1200) %b, i8 0, i64 1200, i1 false)
  call void @llvm.lifetime.start.p0(i64 12000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not24 = icmp slt i32 %0, 1
  br i1 %cmp.not24, label %for.cond.cleanup10, label %for.body

for.cond8.preheader:                              ; preds = %for.body
  %1 = icmp slt i32 %2, 1
  br i1 %1, label %for.cond.cleanup10, label %for.body11

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x [40 x i8]], ptr %a, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #6
  %conv = trunc i64 %call5 to i32
  %arrayidx7 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 %conv, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp.not.not, label %for.body, label %for.cond8.preheader, !llvm.loop !9

for.cond.cleanup10:                               ; preds = %for.inc30, %entry, %for.cond8.preheader
  call void @llvm.lifetime.end.p0(i64 12000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body11:                                       ; preds = %for.cond8.preheader, %for.inc30
  %j.028 = phi i32 [ %inc31, %for.inc30 ], [ 1, %for.cond8.preheader ]
  %m.027 = phi i32 [ %m.1, %for.inc30 ], [ 0, %for.cond8.preheader ]
  %idxprom12 = sext i32 %j.028 to i64
  %arrayidx13 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom12
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %add = add nsw i32 %4, %m.027
  %add14 = add nsw i32 %add, 1
  %cmp15 = icmp slt i32 %add, 81
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %for.body11
  %arrayidx17 = getelementptr inbounds [300 x [40 x i8]], ptr %a, i64 0, i64 %idxprom12
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx17) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx17, i64 noundef %call.i.i)
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %j.028, %5
  br i1 %cmp20, label %land.lhs.true, label %for.inc30

land.lhs.true:                                    ; preds = %if.then
  %add21 = add nsw i32 %j.028, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom22
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add24 = add nsw i32 %6, %add14
  %cmp25 = icmp slt i32 %add24, 81
  br i1 %cmp25, label %if.then26, label %for.inc30

if.then26:                                        ; preds = %land.lhs.true
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc30

if.else:                                          ; preds = %for.body11
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %dec = add nsw i32 %j.028, -1
  br label %for.inc30

for.inc30:                                        ; preds = %if.else, %if.then26, %land.lhs.true, %if.then
  %m.1 = phi i32 [ %add14, %if.then26 ], [ %add14, %land.lhs.true ], [ %add14, %if.then ], [ 0, %if.else ]
  %j.1 = phi i32 [ %j.028, %if.then26 ], [ %j.028, %land.lhs.true ], [ %j.028, %if.then ], [ %dec, %if.else ]
  %inc31 = add nsw i32 %j.1, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp9.not.not = icmp slt i32 %j.1, %7
  br i1 %cmp9.not.not, label %for.body11, label %for.cond.cleanup10, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!12 = distinct !{!12, !10, !11}
