; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcdzpknkk.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %num) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef %a) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 2000, i1 noundef false) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 1, %entry ], [ %j.1, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc3, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %1 = load i32, ptr %num, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp2 = icmp ne i32 %rem, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %j.0, 1
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %inc3 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub = sub nsw i32 %j.0, 1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc32, %for.end
  %k.0 = phi i32 [ 1, %for.end ], [ %inc33, %for.inc32 ]
  %sub5 = sub nsw i32 %sub, 1
  %cmp6 = icmp sle i32 %k.0, %sub5
  br i1 %cmp6, label %for.body7, label %for.end34

for.body7:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc29, %for.body7
  %i.1 = phi i32 [ 1, %for.body7 ], [ %add, %for.inc29 ]
  %sub9 = sub nsw i32 %sub, %k.0
  %cmp10 = icmp sle i32 %i.1, %sub9
  br i1 %cmp10, label %for.body11, label %for.inc32

for.body11:                                       ; preds = %for.cond8
  %idxprom12 = sext i32 %i.1 to i64
  %arrayidx13 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom12
  %2 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %add = add nsw i32 %i.1, 1
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom14
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %2, %3
  br i1 %cmp16, label %if.then17, label %for.inc29

if.then17:                                        ; preds = %for.body11
  store i32 %3, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body11, %if.then17
  br label %for.cond8, !llvm.loop !12

for.inc32:                                        ; preds = %for.cond8
  %inc33 = add nsw i32 %k.0, 1
  br label %for.cond4, !llvm.loop !13

for.end34:                                        ; preds = %for.cond4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc48, %for.end34
  %i.2 = phi i32 [ 1, %for.end34 ], [ %inc49, %for.inc48 ]
  %cmp36 = icmp sle i32 %i.2, %sub
  br i1 %cmp36, label %for.body37, label %for.end50

for.body37:                                       ; preds = %for.cond35
  %cmp38 = icmp ne i32 %i.2, %sub
  %idxprom40 = sext i32 %i.2 to i64
  %4 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom40
  %5 = load i32, ptr %4, align 4, !tbaa !5
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %for.body37
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call42, ptr noundef @.str)
  br label %for.inc48

if.else:                                          ; preds = %for.body37
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  br label %for.inc48

for.inc48:                                        ; preds = %if.then39, %if.else
  %inc49 = add nsw i32 %i.2, 1
  br label %for.cond35, !llvm.loop !14

for.end50:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %num) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nofree willreturn }
attributes #7 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
