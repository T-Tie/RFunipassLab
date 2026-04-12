; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6w0dbvh6.cpp"
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
  %a = alloca [100 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i8 49, ptr %a, align 16, !tbaa !5
  %arrayidx1 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 1
  store i8 0, ptr %arrayidx1, align 1, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc46, %for.inc45 ]
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  %call2 = call i64 @strlen(ptr noundef %a) #6
  %conv = trunc i64 %call2 to i32
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %c.0 = phi i32 [ 0, %for.body ], [ %c.1, %for.inc ]
  %sub = sub nsw i32 %conv, 1
  %cmp4 = icmp sle i32 %j.0, %sub
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %idxprom = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx6, align 1, !tbaa !5
  %conv7 = sext i8 %1 to i32
  %sub8 = sub nsw i32 %conv7, 48
  %cmp9 = icmp slt i32 %sub8, 5
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body5
  %mul = mul nsw i32 %sub8, 2
  %add = add nsw i32 %mul, 48
  %add14 = add nsw i32 %add, %c.0
  br label %for.inc

if.else:                                          ; preds = %for.body5
  %mul22 = mul nsw i32 %sub8, 2
  %add23 = add nsw i32 %mul22, 48
  %add24 = add nsw i32 %add23, %c.0
  %sub25 = sub nsw i32 %add24, 10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %sub25.sink = phi i32 [ %sub25, %if.else ], [ %add14, %if.then ]
  %c.1 = phi i32 [ 0, %if.then ], [ 1, %if.else ]
  %conv26 = trunc i32 %sub25.sink to i8
  store i8 %conv26, ptr %arrayidx6, align 1, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  %add29 = add nsw i32 %c.0, 48
  %conv30 = trunc i32 %add29 to i8
  %idxprom31 = sext i32 %j.0 to i64
  %arrayidx32 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom31
  store i8 %conv30, ptr %arrayidx32, align 1, !tbaa !5
  %conv35 = sext i8 %conv30 to i32
  %cmp36 = icmp ne i32 %conv35, 48
  br i1 %cmp36, label %if.then37, label %if.else41

if.then37:                                        ; preds = %for.end
  %add38 = add nsw i32 %j.0, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom39
  store i8 0, ptr %arrayidx40, align 1, !tbaa !5
  br label %for.inc45

if.else41:                                        ; preds = %for.end
  store i8 0, ptr %arrayidx32, align 1, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %if.then37, %if.else41
  %inc46 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end47:                                        ; preds = %for.cond
  %call49 = call i64 @strlen(ptr noundef %a) #6
  %conv50 = trunc i64 %call49 to i32
  %sub51 = sub nsw i32 %conv50, 1
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc58, %for.end47
  %k.0 = phi i32 [ %sub51, %for.end47 ], [ %dec, %for.inc58 ]
  %cmp53 = icmp sge i32 %k.0, 0
  br i1 %cmp53, label %for.inc58, label %for.end59

for.inc58:                                        ; preds = %for.cond52
  %idxprom55 = sext i32 %k.0 to i64
  %arrayidx56 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom55
  %2 = load i8, ptr %arrayidx56, align 1, !tbaa !5
  %call57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  %dec = add nsw i32 %k.0, -1
  br label %for.cond52, !llvm.loop !14

for.end59:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
